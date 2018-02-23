syms x;
y=1/x
M=[1 1]

Dyx=diff(y)
D2yx=diff(y,2)

DyxM=subs(Dyx,[x y],M)
D2yxM=subs(D2yx,[x y],M)

k=abs(D2yxM)/(1+DyxM^2)^(3/2)