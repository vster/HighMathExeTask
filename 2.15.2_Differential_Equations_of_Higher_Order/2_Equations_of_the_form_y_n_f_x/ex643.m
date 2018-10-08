% Solve equation
% y''=x*exp(-x)
% y(0)=1, y'(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)==x*exp(-x)
Dy=diff(y,x)
cond = [y(0)==1, Dy(0)==0]
ySol=dsolve(eqn,cond)
% x + 2*exp(-x) + x*exp(-x) - 1

% Checking
eqn10=diff(y,x,2)-x*exp(-x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0