% Find the general solution of the equation
% y''+25*y=0

% 1)
clear
syms k
eq1=k^2+25
kSol=solve(eq1).'
% [ -5i, 5i]
% y=C1*cos(5*x)+C2*sin(5*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)+25*y==0
ySol=simplify(dsolve(eqn))
% C25*cos(5*x) + C26*sin(5*x)

% Checking
eqn10=diff(y,x,2)+25*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0