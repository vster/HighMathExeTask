% Solve equation
% y'+3*y*tan(3*x)=sin(6*x)
% y(0)=1/3

% 1)
clear
syms x y(x)
eqn=diff(y)+3*y*tan(3*x)==sin(6*x)
cond=y(0)==1/3
ySol=simplify(dsolve(eqn,cond))
% cos(3*x) - (2*cos(3*x)^2)/3

% Checking
for i=1:1
eqn10=diff(y)+3*y*tan(3*x)-sin(6*x)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0