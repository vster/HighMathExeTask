syms x dx lam;
I=int(exp(-x^2-lam^2/x^2),x,0,inf)

dI=diff(I,lam)


