% Find the general solution of the equation
% y''-4*y'+4*y=0

% 1)
clear
syms k
eq1=k^2-4*k+4
kSol=solve(eq1).'
% [ 2, 2]
% y=exp(2*x)*(C1+C2*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-4*diff(y,x)+4*y==0
ySol=simplify(dsolve(eqn))
% exp(2*x)*(C29 + C30*x)

% Checking
eqn10=diff(y,x,2)-4*diff(y,x)+4*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0