% Solve equation
% y'=x^2+y^2
% y(0)=1

% 1)
clear
syms x y(x)
eqn=diff(y,x)-(x^2+y^2)
cond=y(0)==1
ySol=simplify(dsolve(eqn,cond))
% 

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0