% Solve equation
% y'''*(x-1)-y''=0
% y(2)=2, y'(2)=1, y''(2)=1

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,3)*(x-1)-diff(y,x,2)==0
Dy(x)=diff(y,x)
D2y(x)=diff(y,x,2)
cond=[y(2)==2,Dy(2)==1,D2y(2)==1]
ySol=dsolve(eqn,cond)
% x/2 + (x - 1)^3/6 + 5/6
ySol=expand(ySol)
% x^3/6 - x^2/2 + x + 2/3

% Checking
eqn10=diff(y,x,3)*(x-1)-diff(y,x,2)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0