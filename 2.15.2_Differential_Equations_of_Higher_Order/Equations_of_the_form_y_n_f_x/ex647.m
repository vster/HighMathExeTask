% Solve equation
% y''=2*sin(x)*cos(x)^2-sin(x)^3

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==2*sin(x)*cos(x)^2-sin(x)^3
ySol=dsolve(eqn)
% C30 - sin(3*x)/12 + sin(x)/4 + C29*x

% Checking
eqn10=diff(y,x,2)-(2*sin(x)*cos(x)^2-sin(x)^3)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0