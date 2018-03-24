syms x y dx real;
d=0.06
g=9.8
ro=1000
r=d/2
c=1

% syms d g ro r c;
dP=2*ro*g*(c+r+x)*sqrt(r^2-x^2)

P=int(dP,x,-r,r)

d=0.06
g=9.8
ro=1000
r=d/2
c=1

P=pi*g*r^2*ro*(c + r)

% Проверить!