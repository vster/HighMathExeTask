% Solve equation
% y'+3*x^2*y/(x^3+1)=y^2*(x^2+1)*sin(x)
% y(0)=1

% 1)
clear
syms x y(x)
eqn=diff(y)+3*x^2*y/(x^3+1)==y^2*(x^2+1)*sin(x)
cond=y(0)==1
ySol=simplify(dsolve(eqn,cond))
% -1/((x^3 + 1)*(int((sin(y)*(y^2 + 1))/(y^3 + 1), y, 0, x) - 1))

% Checking
eqn10=diff(y)+3*x^2*y/(x^3+1)-y^2*(x^2+1)*sin(x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0