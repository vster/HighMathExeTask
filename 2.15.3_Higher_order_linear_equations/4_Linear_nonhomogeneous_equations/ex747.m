% Find a solution to the equation 
% 18*x''=g*x-(18-x)*g-g*1
% satisfying the initial conditions 
% x(0)=10,x'(0)=0

% 1)
clear
syms t x(t) g
eqn=18*diff(x,t,2)==g*x-(18-x)*g-g*1
dx(t)=diff(x)
cond=[x(0)==10,dx(0)==0]
xSol=simplify(dsolve(eqn,cond))
% exp(-(g^(1/2)*t)/3)/4 + exp((g^(1/2)*t)/3)/4 + 19/2

% Checking
eqn10=18*diff(x,t,2)-(g*x-(18-x)*g-g*1)
for i=1:length(xSol)
    chk(i)=simplify(subs(eqn10,x(t),xSol(i)))
end
% 0

% cosh((g^(1/2)*t/3)/2+19/2=18
eq2=cosh(g^(1/2)*t/3)-17
T=solve(eq2)
% -(3*acosh(17))/g^(1/2)
%  (3*acosh(17))/g^(1/2)
digits(4)
T=vpa(subs(T(2),g,9.8))
% 3.379