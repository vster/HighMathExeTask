% Find the coordinates of the center of gravity of the homogeneous arc of the curve
% y=cosh(x) (0<=x<=log(2))

% Coordinates of the center of gravity
% xm=1/s * int (K) x ds
% ym=1/s * int (K) y ds

syms x dx;
y=cosh(x)
dy=diff(y)
ds=sqrt(1+dy^2)
% (sinh(x)^2 + 1)^(1/2)
s=int(ds,x,0,log(sym(2)))
% 3/4
xm=1/s*int(x*ds,x,0,log(sym(2)))
% log(2) - 1/3
ym=1/s*int(y*ds,x,0,log(sym(2)))
% (2*log(2))/3 + 5/8