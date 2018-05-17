% Find an antiderivative function U, if
% dU=(asin(x)-x*log(y))dx-(asin(y)+x^2/2y)dy

syms x y;
P=asin(x)-x*log(y)
Q=-(asin(y)+x^2/(2*y))

dPy=diff(P,y)
% -x/y
dQx=diff(Q,x)
% -x/y
% dPy=dQx

P=subs(P,y,1)
% asin(x)
U=int(P,x,1,x)+int(Q,y,1,y)
U=expand(U)
U=simplify(U)
% x*asin(x) - (x^2*log(y))/2 - y*asin(y) + (1 - x^2)^(1/2) - 
% (1 - y^2)^(1/2) + C