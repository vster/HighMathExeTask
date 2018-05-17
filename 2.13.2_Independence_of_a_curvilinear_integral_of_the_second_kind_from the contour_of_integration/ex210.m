% Find an antiderivative function U, if
% dU=(sinh(x)+cosh(y))dx+(x*sinh(y)+1)dy

syms x y;
P=sinh(x)+cosh(y)
Q=x*sinh(y)+1

dPy=diff(P,y)
% sinh(y)
dQx=diff(Q,x)
% sinh(y)
% dPy=dQx

P=subs(P,y,0)
% sinh(x) + 1
U=int(P,x,0,x)+int(Q,y,0,y)
U=expand(U)
% y + cosh(x) + x*cosh(y) + C