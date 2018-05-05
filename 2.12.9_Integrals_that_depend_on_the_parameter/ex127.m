syms x lam;
I=int(log(1+lam*x)/(1+x^2),x,0,lam)

dI=diff(I,lam)