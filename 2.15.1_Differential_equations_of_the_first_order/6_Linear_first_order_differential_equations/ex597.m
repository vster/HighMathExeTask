% Integrate the equation
% y'-y*tanh(x)=coth(x)^2

% 1)
clear
syms x y(x)
eqn=diff(y)-y*tanh(x)==coth(x)^2
ySol=dsolve(eqn)
% C5*cosh(x) - cosh(x)/sinh(x)

% Checking
for i=1:1
eqn10=diff(y)-y*tanh(x)-coth(x)^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0