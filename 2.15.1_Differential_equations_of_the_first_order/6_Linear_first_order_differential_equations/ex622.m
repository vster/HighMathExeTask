% Solve equation
% y*dx+(x+x^2*y^2)*dy=0

% 1)
clear
% y*x'+(x+x^2*y^2)=0
syms y x(y)
eqn=y*diff(x)+(x+x^2*y^2)==0
xSol=simplify(dsolve(eqn))
%                0
% 1/(y*(C25 + y))

% Checking
eqn10=y*diff(x)+(x+x^2*y^2)
for i=1:2
chk(i)=simplify(subs(eqn10,x(y),xSol(i)))
end
% [ 0, 0]