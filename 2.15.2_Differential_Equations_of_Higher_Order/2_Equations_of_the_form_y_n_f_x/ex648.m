% Solve equation
% y'''=x*exp(-x)
% y(0)=0, y'(0)=2, y''(0)=2

% 1)
clear
syms x y(x)
eqn=diff(y,x,3)==x*exp(-x)
Dy(x)=diff(y,x)
D2y(x)=diff(y,x,2)
cond=[y(0)==0,Dy(0)==2,D2y(0)==2]
ySol=dsolve(eqn,cond)
% (3*x^2)/2 - x*exp(-x) - 3*exp(-x) + 3

% Checking
eqn10=diff(y,x,3)-x*exp(-x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0