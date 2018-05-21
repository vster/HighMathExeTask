syms x a p real;
assume(p>1)
I=int(1/x^p,x,a,+inf)
pretty(I)

assume(p<=1)
I=int(1/x^p,x,a,+inf)
pretty(I)