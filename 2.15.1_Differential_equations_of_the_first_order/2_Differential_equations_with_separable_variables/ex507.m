% Solve equation
% x*(y^2-4)*dx+y*dy=0

% 1)
syms x y dx dy real;
% x*(y^2-4)*dx+y*dy = 0
% x*dx+y*dy/(y^2-4)=0
eq2=int(x,x)+int(y/(y^2-4),y)
% x^2 + log(y^2 - 4)=log(C)
syms C;
eq2=x^2 + log(y^2 - 4)-log(C)
eq3=simplify(exp(eq2))
% (exp(x^2)*(y^2 - 4))/C=1
% y^2-4=C*exp(-x^2)

% 2)
% x*(y^2-4)*dx+y*dy=0
% dy/dx=-x*(y^2-4)/y
syms x y(x);
eqn = diff(y,x) == -x*(y^2-4)/y
ySol=dsolve(eqn)
%                              2
%                             -2
%  (exp(- x^2 + 2*C2) + 4)^(1/2)
% -(exp(- x^2 + 2*C2) + 4)^(1/2)

% Checking
ySol3=ySol(3)
eq5=simplify(diff(ySol3,x)+x*(ySol3^2-4)/ySol3)
% 0

eq6=simplify(subs(eqn,y,ySol3))
% TRUE