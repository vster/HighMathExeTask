% Solve equation
% (1-x^2)*y''-x*y'=2

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=(1-x^2)*diff(y,x,2)-x*diff(y,x)==2
ySol=dsolve(eqn)
% C11 - log(x + (x^2 - 1)^(1/2))^2 + C10*log(x + (x^2 - 1)^(1/2))

% Checking
eqn10=(1-x^2)*diff(y,x,2)-x*diff(y,x)-2
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0