% Solve equation
% x*(y^2-4)*dx+y*dy=0

syms x y dx dy real;
% x*(y^2-4)*dx+y*dy = 0
% x*dx+y*dy/(y^2-4)=0
eq2=int(x,x)+int(y/(y^2-4),y)
% x^2 + log(y^2 - 4)=log(C)
% y^2-4=C*exp(-x^2)
