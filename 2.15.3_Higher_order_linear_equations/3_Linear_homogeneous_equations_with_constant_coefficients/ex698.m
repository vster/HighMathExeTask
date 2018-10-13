% Find the general solution of the equation
% y''-y=0

% 1)
clear
syms k
eq1=k^2-1
kSol=solve(eq1).'
% [ -1, 1]
% y=C1*exp(-x)+C2*exp(x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-y==0
ySol=simplify(dsolve(eqn))
% C28*exp(x) + C27*exp(-x)

% Checking
eqn10=diff(y,x,2)-y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0