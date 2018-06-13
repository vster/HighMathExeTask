syms x y a b;
% x^2/a^2+y^2/b^2=1

syms t;
x=a*cos(t)
y=b*sin(t)
dx=diff(x)
dy=diff(y)

f2=y*sqrt(dx^2+dy^2)
f2=simplify(f2)

Sx=2*pi*int(f2,t,0,pi)
