% Find an antiderivative function U, if
% dU=(1-exp(x-y)+cos(x))dx+(exp(x-y)+cos(y))dy

syms x y;
P=1-exp(x-y)+cos(x)
Q=exp(x-y)+cos(y)

dPy=diff(P,y)
% exp(x - y)
dQx=diff(Q,x)
% exp(x - y)
% dPy=dQx

P=subs(P,y,0)
% cos(x) - exp(x) + 1
U=int(P,x,0,x)+int(Q,y,0,y)
U=simplify(U)
% x - exp(x - y) + sin(x) + sin(y) + C
