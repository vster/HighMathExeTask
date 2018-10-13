% Find the general solution of the equation
% y''-y'-2*y=0

% 1)
clear
syms x k i
eq1=k^2-k-2
kSol=solve(eq1).'
% [ -1, 2]
% y=C1*exp(-x)+C2*exp(2*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-diff(y,x)-2*y==0
ySol=simplify(dsolve(eqn))
% C23*exp(2*x) + C24*exp(-x)

% Checking
eqn10=diff(y,x,2)-diff(y,x)-2*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0