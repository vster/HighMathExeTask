% Solve equation
% y'''*sin(x)^4=sin(2*x)

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,3)*sin(x)^4==sin(2*x)
ySol=dsolve(eqn)
% C23 + log(exp(x*2i) - 1) + C22*x + C21*x^2

% Checking
eqn10=diff(y,x,3)*sin(x)^4-sin(2*x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0