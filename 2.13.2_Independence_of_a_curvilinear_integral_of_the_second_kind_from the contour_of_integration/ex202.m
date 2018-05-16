% Find an antiderivative function U, if
% dU=(y+log(x+1))dx+(x+1-exp(y))dy

syms x y dx dy;
dU=(y+log(x+1))*dx+(x+1-exp(y))*dy
P=y+log(x+1)
Q=x+1-exp(y)

dPy=diff(P,y)
% 1
dQx=diff(Q,x)
% 1
% dPy=dQx

% Let x0=0,y0=0 and contour K
% is an broken line OMN
x0=0
y0=0

P=subs(P,y,y0)
% log(x + 1)
U=int(P,x,0,x)+int(Q,y,0,y)
% y - exp(y) + x*y + (log(x + 1) - 1)*(x + 1) + 2