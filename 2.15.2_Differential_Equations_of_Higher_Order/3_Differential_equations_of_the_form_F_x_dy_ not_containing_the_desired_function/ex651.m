% Solve equation
% y''-y'/(x-1)=x*(x-1)
% y(2)=1, y'(2)=-1

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=diff(y,x,2)-diff(y,x)/(x-1)==x*(x-1)
Dy(x)=diff(y,x)
cond=[y(2)==1,Dy(2)==-1]
ySol=dsolve(eqn,cond)
% (x^3*(x - 2))/4 - (x^3*(3*x - 8))/24 - (3*x*(x - 2))/2 + 1/3
ySol=expand(ySol)
% x^4/8 - x^3/6 - (3*x^2)/2 + 3*x + 1/3

% Checking
eqn10=diff(y,x,2)-diff(y,x)/(x-1)-x*(x-1)
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0