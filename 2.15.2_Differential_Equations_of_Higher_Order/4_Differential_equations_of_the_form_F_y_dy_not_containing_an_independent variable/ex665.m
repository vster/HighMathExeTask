% Solve equation
% y''=y'/sqrt(y)

% 1)
clear
syms x real
syms y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==diff(y,x)/sqrt(y)
ySol=simplify(dsolve(eqn))
%

% Checking
eqn10=diff(y,x,2)-diff(y,x)/sqrt(y)
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end