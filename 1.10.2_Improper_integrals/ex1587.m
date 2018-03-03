syms x;
y=x*atan(x)/sqrt(1+x^3)
I=int(y,0,+inf)
pretty(I)