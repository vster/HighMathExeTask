syms x a;
f=exp(1/(x-a))
y1=limit(f,x,a,'left')
y2=limit(f,x,a,'right')
ezplot(f)
grid