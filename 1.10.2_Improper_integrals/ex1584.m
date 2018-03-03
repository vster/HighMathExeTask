syms x;
y=log(1+x^(1/3))/(exp(sin(x))-1)
I=int(y,0,1)
pretty(I)