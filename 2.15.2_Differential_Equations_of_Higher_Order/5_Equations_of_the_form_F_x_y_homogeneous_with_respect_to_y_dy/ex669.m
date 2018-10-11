% Solve equation
% (y+y')*y''+y'^2=0

% 1)
clear
syms x y(x)
eqn=(y+diff(y,x))*diff(y,x,2)+diff(y,x)^2==0
ySol=simplify(dsolve(eqn))
%

% Checking
eqn10=(y+diff(y,x))*diff(y,x,2)+diff(y,x)^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end