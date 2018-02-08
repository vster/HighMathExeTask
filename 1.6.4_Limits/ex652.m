syms x
f=((x^2+5*x+4)/(x^2-3*x+7))^x
y1=limit(f,x,inf)
ezplot(f)
grid
