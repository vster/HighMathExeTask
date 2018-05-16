% Find the center of gravity
% y^2=2*p*x, x=2*p

syms x y p;
x1=2*p
x2=y^2/(2*p)

S=int(int(1,x,x2,x1),y,-2*p,2*p)
% (16*p^2)/3
xm=1/S*int(int(x,x,x2,x1),y,-2*p,2*p)
% (6*p)/5
ym=1/S*int(int(y,x,x2,x1),y,-2*p,2*p)
% 0