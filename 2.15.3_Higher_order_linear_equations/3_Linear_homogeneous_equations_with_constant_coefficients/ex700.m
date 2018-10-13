% Find the general solution of the equation
% y''''-2*y'''+y''=0

% 1)
clear
syms k
eq1=k^4-2*k^3+k^2
kSol=solve(eq1).'
% [ 0, 0, 1, 1]
% y=(C1+C2*x)+(C3+C4*x)*exp(x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,4)-2*diff(y,x,3)+diff(y,x,2)==0
ySol=simplify(dsolve(eqn))
% 2*C31 + C32 + C31*x + C33*exp(x) + C34*x*exp(x)

% Checking
eqn10=diff(y,x,4)-2*diff(y,x,3)+diff(y,x,2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0