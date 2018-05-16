% Find an antiderivative function U, if
% dU=(x^2-2xy^2+3)dx+(y^2-2x^2y+3)dy

syms x y;
P=x^2-2*x*y^2+3
Q=y^2-2*x^2*y+3

dPy=diff(P,y)
% -4*x*y
dQx=diff(Q,x)
% -4*x*y
% dPy=dQx

P=subs(P,y,0)
% x^2 + 3
U=int(P,x,0,x)+int(Q,y,0,y)
U=expand(U)
% x^3/3 - x^2*y^2 + 3*x + y^3/3 + 3*y + C