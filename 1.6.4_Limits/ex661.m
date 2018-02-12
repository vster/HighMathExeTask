syms a h;
f=(sin(a+2*h)-2*sin(a+h)+sin(a))/h^2
pretty(f)
y1=limit(f,h,0)
ezplot(f)
grid