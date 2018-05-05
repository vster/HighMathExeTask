syms x lam;
I=int(atan(lam*x)/(x*(1+x^2)),x,0,inf)

dI=diff(I,lam)

I=int(dI,lam)
% (pi*log(lam + 1))/2 - ?