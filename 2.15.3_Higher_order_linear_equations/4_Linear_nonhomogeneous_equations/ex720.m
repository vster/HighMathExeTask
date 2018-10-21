% Find a solution to the equation 
% x''-g/9*x=-g
% satisfying the initial conditions 
% x(0)=10,x'(0)=0

% 1)
clear
syms t x(t) g
eqn=diff(x,t,2)-g/9*x==-g
dx(t)=diff(x)
cond=[x(0)==10,dx(0)==0]
xSol=simplify(dsolve(eqn,cond))
% exp(-(g^(1/2)*t)/3)/2 + exp((g^(1/2)*t)/3)/2 + 9

% Checking
eqn10=diff(x,t,2)-g/9*x+g
for i=1:length(xSol)
    chk(i)=simplify(subs(eqn10,x(t),xSol(i)))
end
% 0

% cosh(g^(1/2)*t)/3)+9=18
eq2=cosh((g^(1/2)*t)/3)-9
T=solve(eq2,t)
% -(3*acosh(9))/g^(1/2)
%  (3*acosh(9))/g^(1/2)
digits(4)
T=vpa(subs(T(2),g,9.8))
% 2.767 s
