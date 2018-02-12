syms x;
f=(x^3-6*x^2+11*x-6)/(x^2-3*x+2)
pretty(f)
y1=limit(f,x,1)
ezplot(f)
grid