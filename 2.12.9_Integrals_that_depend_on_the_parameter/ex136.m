syms x lam;
assume(lam^2<1)
I=int(log(1-lam^2*x^2)/(x^2*sqrt(1-x^2)),x,0,1)
dI=diff(I,lam)
% Does not work((