% Solve equation
% y'-2*y*tan(x)+y^2*sin(x)^2=0

% 1)
clear
syms x y(x)
eqn=diff(y)-2*y*tan(x)+y^2*sin(x)^2==0
ySol=simplify(dsolve(eqn))
%                               0
% 1/(cos(x)^2*(C26 - x + tan(x)))

% Checking
eqn10=diff(y)-2*y*tan(x)+y^2*sin(x)^2
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]