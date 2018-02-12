syms x;
f=(sqrt(1+x+x^2)-sqrt(1-x+x^2))/(x^2-x)
pretty(f)
y1=limit(f,x,0)
ezplot(f)
grid