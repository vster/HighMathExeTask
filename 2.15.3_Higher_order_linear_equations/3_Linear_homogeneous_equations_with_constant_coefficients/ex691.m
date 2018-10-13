% Find a solution to the equation 
% x''-x'-2*x=0
% satisfying the initial conditions 
% x=0,x'=3,t=0.

% 1)
clear
syms t k i
% Characteristic equation
eqn=k^2-k-2
kSol=solve(eqn).'
% [ -1, 2]
syms i C(i)
x=0
for i=1:length(kSol)
    x=x+C(i)*exp(kSol(i)*t)
end
% C(1)*exp(-t) + C(2)*exp(2*t)
dx=diff(x,t)
% 2*C(2)*exp(2*t) - C(1)*exp(-t)
eq1=subs(x,t,0)
% C(1) + C(2)
eq2=subs(dx,t,0)-3
% 2*C(2) - C(1) - 3

syms C1 C2
eqns = [C1+C2 == 0, 2*C2-C1 == 3];
vars = [C1 C2];
[sol1, sol2] = solve(eqns, vars)
x=subs(x,[C(1) C(2)],[-1 1])
% x = exp(2*t) - exp(-t)

% 2)
clear
syms t x(t)
eqn=diff(x,t,2)-diff(x,t)-2*x==0
dx(t)=diff(x,t)
cond=[x(0)==0,dx(0)==3]
xSol=simplify(dsolve(eqn,cond))
% exp(2*t) - exp(-t)

% Checking
eqn10=diff(x,t,2)-diff(x,t)-2*x
for i=1:length(xSol)
    chk(i)=simplify(subs(eqn10,x(t),xSol(i)))
end
% 0