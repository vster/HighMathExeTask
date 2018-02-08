syms x

y=((2*x-1)^3*sqrt(3*x+2))/((5*x+4)^2*(1-x)^(1/3))
subplot(2,1,1)
ezplot(y)
grid

dy=diff(y)
dy=simplify(dy)

subplot(2,1,2)
ezplot(dy)
grid