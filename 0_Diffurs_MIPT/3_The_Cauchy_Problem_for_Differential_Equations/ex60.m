clear
syms x y(x)
eqn=4*y*diff(y,x,2)+(y^2-9)*diff(y,x)^6+diff(y,x)^2
ySol=simplify(dsolve(eqn))
% 
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0