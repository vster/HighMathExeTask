% Solve equation
% y'+2*y/x=3*x^2*y^(4/3)

% 1)
clear
syms x y(x)
eqn=diff(y)+2*y/x-3*x^2*y^(4/3)==0
ySol=simplify(dsolve(eqn))
%                              0
% 343/(x^2*(C13 - 3*x^(7/3))^3)

% Checking
eqn10=diff(y)+2*y/x-3*x^2*y^(4/3)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
pretty(chk)