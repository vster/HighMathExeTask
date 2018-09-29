% Integrate the equation
% (x^2*log(y)-x)*y'=y

% 1)
clear
syms x y(x)
eqn=(x^2*log(y)-x)*diff(y)==y
ySol=simplify(dsolve(eqn))
% ???

% Checking
for i=1:1
eqn10=(x^2*log(y)-x)*diff(y)-y
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end