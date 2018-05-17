% Find an antiderivative function U, if
% dU=(2x-3xy^2+2y)dx+(2x-3x^2y+2y)dy

syms x y;
P=2*x-3*x*y^2+2*y
Q=2*x-3*x^2*y+2*y

dPy=diff(P,y)
% 2 - 6*x*y
dQx=diff(Q,x)
% 2 - 6*x*y
% dPy=dQx

P=subs(P,y,0)
% 2*x
U=int(P,x,0,x)+int(Q,y,0,y)
U=expand(U)
% - (3*x^2*y^2)/2 + x^2 + 2*x*y + y^2 + C