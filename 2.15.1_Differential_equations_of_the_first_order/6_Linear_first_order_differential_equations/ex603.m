% Solve equation
% x*y'-y=x^2*cos(x)

% 1)
clear
syms x y(x)
eqn=x*diff(y)-y==x^2*cos(x)
ySol=simplify(dsolve(eqn))
% x*(C14 + sin(x))

% Checking
for i=1:1
eqn10=x*diff(y)-y-x^2*cos(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0