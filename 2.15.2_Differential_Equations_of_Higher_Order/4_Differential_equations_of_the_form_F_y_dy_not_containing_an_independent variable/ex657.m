% Solve equation
% y''=b*sin(y)-k*y'^2
% y(0)=0, y'(0)=0

% 1)
clear
syms x b k real
syms y(x)
assume(y(x),'real')
eqn=diff(y,x,2)==b*sin(y)-k*diff(y,x)^2
Dy(x)=diff(y,x)
cond=[y(0)==0,Dy(0)==0]
ySol=dsolve(eqn,cond)
% 0

% Checking
eqn10=diff(y,x,2)-(b*sin(y)-k*diff(y,x)^2)
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end