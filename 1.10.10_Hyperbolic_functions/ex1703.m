syms x a;
y=a*cosh(x/a)
dy=diff(y,x)
L=int(sqrt(1+dy^2),0,a)