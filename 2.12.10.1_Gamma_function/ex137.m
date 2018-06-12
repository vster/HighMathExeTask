% The Euler-Poisson integral
syms x;
I=int(exp(-x^2),x,0,inf)
% pi^(1/2)/2
I2=gamma(sym(1/2))/2
% pi^(1/2)/2