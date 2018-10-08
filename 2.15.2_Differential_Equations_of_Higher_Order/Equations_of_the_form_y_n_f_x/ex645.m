% Solve equation
% y'''=x*sin(x)
% y(0)=0, y'(0)=0, y''(0)=2

% 1)
clear
syms x y(x)
eqn=diff(y,x,3)==x*sin(x)
Dy(x)=diff(y,x)
D2y(x)=diff(y,x,2)
cond=[y(0)==0,Dy(0)==0,D2y(0)==2]
ySol=dsolve(eqn,cond)
% 2*x - 3*sin(x) + x*cos(x) + x^2

% Checking
eqn10=diff(y,x,3)-x*sin(x)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0