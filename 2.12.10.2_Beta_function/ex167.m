syms x a n;
assume(a>0)
assume(n,'integer')
I=int(x^(2*n)*sqrt(a^2-x^2),x,0,a)