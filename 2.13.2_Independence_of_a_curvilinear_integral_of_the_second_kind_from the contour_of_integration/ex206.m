% Find an antiderivative function U, if
% dU=(exp(x+y)+cos(x-y))dx+(exp(x+y)-cos(x-y)+2)dy

syms x y;
P=exp(x+y)+cos(x-y)
Q=exp(x+y)-cos(x-y)+2

dPy=diff(P,y)
% sin(x - y) + exp(x + y)
dQx=diff(Q,x)
% sin(x - y) + exp(x + y)
% dPy=dQx

P=subs(P,y,sym(0))
% cos(x) + exp(x)
U=int(P,x,0,x)+int(Q,y,0,y)
U=simplify(U)
% 2*y + sin(x - y) + exp(x + y) + C
