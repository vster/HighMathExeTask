syms x;
% Fresnel integral
I=int(sin(x^2),x,0,+inf)
% (2^(1/2)*pi^(1/2))/4
pretty(I)