% y'=(x+y-2)/(y-x-4)
% M(1;1)

syms x y(x)
eqn=diff(y(x))==(x+y-2)/(y-x-4)
cond=y(1)==1
ySol=dsolve(eqn,cond)
% x - 2^(1/2)*(x^2 + 2*x + 5)^(1/2) + 4

eq10=diff(y(x))-(x+y-2)/(y-x-4)
eq11=subs(eq10,y,ySol)
eq11=simplify(eq11)
% 0