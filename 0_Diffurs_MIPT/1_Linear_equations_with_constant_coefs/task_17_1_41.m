clear
syms x y(x)
eqn=diff(y,x,4)+8*diff(y,x,2)+16*y-8*cos(2*x)
ySol=simplify(dsolve(eqn))
% (3*cos(2*x))/32 + (3*x*sin(2*x))/8 - (x^2*cos(2*x))/4 + C10*cos(2*x) + C12*sin(2*x) + C11*x*cos(2*x) + C13*x*sin(2*x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0