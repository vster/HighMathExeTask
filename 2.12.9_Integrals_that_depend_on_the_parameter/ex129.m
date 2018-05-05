syms x lam;
I=int(atan(lam*x)/(x*sqrt(1-x^2)),x,0,1)

dI=diff(I,lam)
% pi/(2*(lam^2 + 1)^(1/2))

I=int(dI,lam)
% (pi*asinh(lam))/2
% pi/2*log(lam+sqrt(1+lam^2)) - прав.ответ

