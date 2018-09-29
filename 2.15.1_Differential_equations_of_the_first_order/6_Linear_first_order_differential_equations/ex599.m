% Solve equation
% y'+y/x=x^2*y^2

% 1)
clear
syms x y(x)
assume (y(x),'real')
eqn=diff(y)+y/x==x^2*y^2
ySol=simplify(dsolve(eqn))
%                    0
% 1/(x*(- x^2/2 + C8))

% Checking
for i=1:2
eqn10=diff(y)+y/x-x^2*y^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]