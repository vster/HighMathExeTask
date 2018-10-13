% Find the general solution of the equation
% y''-7*y'+6*y=0

% 1)
clear
syms x k
% Characteristic equation
eq1=k^2-7*k+6
kSol=solve(eq1).'
% [ 1, 6]
syms C1 C2
y=C1*exp(kSol(1)*x)+C2*exp(kSol(2)*x)
% C1*exp(x) + C2*exp(6*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-7*diff(y,x)+6*y==0
ySol=simplify(dsolve(eqn))
% C5*exp(x) + C4*exp(6*x)

% Checking
eqn10=diff(y,x,2)-7*diff(y,x)+6*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0