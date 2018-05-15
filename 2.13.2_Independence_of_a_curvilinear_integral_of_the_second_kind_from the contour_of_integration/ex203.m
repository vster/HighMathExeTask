syms x y dx dy;
dU=(1/x+1/y)*dx+(2/y-x/y^2)*dy
P=1/x+1/y
Q=2/y-x/y^2

dPy=diff(P,y)
% -1/y^2
dQx=diff(Q,x)
% -1/y^2
% dPy=dQx

% Let take as (x0;y0) point A0(1;1)
x0=1
y0=1

% I1
P=subs(P,y,y0)
% 1/x + 1
I1=int(P,x,1,x)
% x + log(x) - 1

% I2
I2=int(Q,y,1,y)
% 2*log(y) + x*(1/y - 1)
I=I1+I2
I=expand(I)
% log(x) + 2*log(y) + x/y - 1
