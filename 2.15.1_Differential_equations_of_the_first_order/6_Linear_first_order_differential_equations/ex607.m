% Solve equation
% (1+x^2)*y'+y=atan(x)

% 1)
clear
syms x y(x)
eqn=(1+x^2)*diff(y)+y==atan(x)
ySol=simplify(dsolve(eqn))
% atan(x) + C18*exp(-atan(x)) - 1

% Checking
for i=1:1
eqn10=(1+x^2)*diff(y)+y-atan(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0