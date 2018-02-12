syms x;
f=1/(x+2^(1/(x-3)))
y1=limit(f,x,3,'left')
y2=limit(f,x,3,'right')
ezplot(f)
grid