syms x
f=(3*x^4-2)/sqrt(x^8+3*x+4)
y1=limit(f,x,inf)
ezplot(f)
hold on
plot([-4 4],[y1 y1],'r')
grid
hold off