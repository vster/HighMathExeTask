% Integrate the equation
% y'-2*x*y/(1+x^2)=4*sqrt(y)/sqrt(1+x^2)*atan(x)

% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=diff(y)-2*x*y/(1+x^2)==4*sqrt(y)/sqrt(1+x^2)*atan(x)
ySol=simplify(dsolve(eqn))
% ???

% Checking
for i=1:1
eqn10=diff(y)-2*x*y/(1+x^2)-4*sqrt(y)/sqrt(1+x^2)*atan(x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end