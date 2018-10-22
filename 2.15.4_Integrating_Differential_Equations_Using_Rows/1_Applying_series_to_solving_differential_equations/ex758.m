% Solve equation
% y'=x-2*y
% y(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x)-x+2*y
cond=y(0)==0
ySol=simplify(dsolve(eqn,cond))
% x/2 + exp(-2*x)/4 - 1/4

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0