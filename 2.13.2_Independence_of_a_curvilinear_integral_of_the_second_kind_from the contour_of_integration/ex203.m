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

P=subs(P,y,y0)
% 1/x + 1
U=int(P,x,1,x)+int(Q,y,1,y)
U=expand(U)
% log(x) + 2*log(y) + x/y - 1
