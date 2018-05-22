% Applying the Green's formula, calculate
% I = int (C) sqrt(x^2+y^2)*dx+y*(x*y+log(x+sqrt(x^2+y^2)))*dy
% where C - rectangle contour 
% 1<=x<=4, 0<=y<=2

syms x y real;
P=sqrt(x^2+y^2)
Q=y*(x*y+log(x+sqrt(x^2+y^2)))

f=diff(Q,x)-diff(P,y)
f=simplify(f)
% y^2

I=int(int(f,y,0,2),x,1,4)
% 8