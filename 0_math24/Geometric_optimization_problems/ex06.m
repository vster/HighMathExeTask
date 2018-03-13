syms x y a b real;
% x^2/a^2+y^2/b^2=1

y=b/a*sqrt(a^2-x^2)

S=4*x*y

dS=diff(S)
dS=simplify(dS)
pretty(dS)

slv=solve(a^2-2*x^2,x)
x1=slv(1)
% (2^(1/2)*a)/2
y1=subs(y,x,x1)
y1=simplify(y1)
y1=b/sqrt(2)
% (2^(1/2)*b)/2

S_max=4*x1*y1
% 2*a*b