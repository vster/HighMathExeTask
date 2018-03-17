syms x;
y=cosh(x)

ezplot(y)
hold on

dy=diff(y)
alfa=atan(dy)

slv=solve(alfa==pi/4, x)

x1=slv
y1=subs(y,x,x1)
M=[asinh(1),2^(1/2)]

plot(M(1),M(2),'ro')
hold off
grid on