syms x lam;
I=int(atan(lam*tan(x))/tan(x),x,0,pi/2)

dI=diff(I,lam)
dI=pi/(2*(lam + 1))

I=int(dI,lam)
% (pi*log(lam + 1))/2