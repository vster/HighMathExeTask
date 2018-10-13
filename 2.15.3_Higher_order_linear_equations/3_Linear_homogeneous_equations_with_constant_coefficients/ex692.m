% Find a solution to the equation 
% x''-2*x'=0
% satisfying the initial conditions 
% x=0 at t=0,x=3 at t=log(2)

% 1)
clear
syms t k i
% Characteristic equation
eqn=k^2-2*k
kSol=solve(eqn).'
% [ 0, 2]
syms i C(i)
x=0
for i=1:length(kSol)
    x=x+C(i)*exp(kSol(i)*t)
end
% C(1) + C(2)*exp(2*t)

eq1=subs(x,t,0)
% C(1) + C(2)=0
eq2=subs(x,t,log(sym(2)))
% C(1) + 4*C(2)=3

syms C1 C2
eqns = [C1+C2 == 0, C1+4*C2== 3];
vars = [C1 C2];
[sol1, sol2] = solve(eqns, vars)
x=subs(x,[C(1) C(2)],[-1 1])
% x=exp(2*t) - 1

% 2)
clear
syms t x(t)
eqn=diff(x,t,2)-2*diff(x,t)==0
dx(t)=diff(x,t)
cond=[x(0)==0,x(log(sym(2)))==3]
xSol=simplify(dsolve(eqn,cond))
% exp(2*t) - 1

% Checking
eqn10=diff(x,t,2)-2*diff(x,t)
for i=1:length(xSol)
    chk(i)=simplify(subs(eqn10,x(t),xSol(i)))
end
% 0