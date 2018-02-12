syms x m n;
f=tan(m*x)/sin(n*x)
pretty(f)
y1=limit(f,x,0)
ezplot(f)
grid