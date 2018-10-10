% Solve equation
% y''=y'/sqrt(y)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)==diff(y,x)/sqrt(y)
ySol=simplify(dsolve(eqn))
%

% Checking
eqn10=diff(y,x,2)-diff(y,x)/sqrt(y)
for i=1:2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end