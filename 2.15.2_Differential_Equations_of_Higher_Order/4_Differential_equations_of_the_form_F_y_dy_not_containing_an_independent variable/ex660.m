% Solve equation
% y*y''-y'^2=0
% y(0)=1, y'(0)=2

% 1)
clear
syms x y(x) 
eqn=y*diff(y,x,2)-diff(y,x)^2==0
Dy(x)=diff(y,x)
cond=[y(0)==1,Dy(0)==2]
ySol=dsolve(eqn,cond)
% exp(2*x)

% Checking
eqn10=y*diff(y,x,2)-diff(y,x)^2
for i=1:1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0