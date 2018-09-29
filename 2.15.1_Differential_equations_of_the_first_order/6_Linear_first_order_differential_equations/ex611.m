% Solve equation
% y'*sin(x)-y*cos(x)=1
% y(pi/2)=0

% 1)
clear
syms x y(x)
eqn=diff(y)*sin(x)-y*cos(x)==1
cond=y(pi/2)==0
ySol=simplify(dsolve(eqn,cond))
% -cos(x)

% Checking
for i=1:1
eqn10=diff(y)*sin(x)-y*cos(x)-1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0