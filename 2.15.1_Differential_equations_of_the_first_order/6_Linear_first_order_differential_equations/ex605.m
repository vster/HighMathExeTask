% Solve equation
% y'*cos(x)+y=1-sin(x)

% 1)
clear
syms x y(x)
eqn=diff(y)*cos(x)+y==1-sin(x)
ySol=simplify(dsolve(eqn))
% (cos(x)*(C16 + x))/(sin(x) + 1)

% Checking
for i=1:1
eqn10=diff(y)*cos(x)+y-(1-sin(x))
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0