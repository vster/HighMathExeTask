% Estimate the error of approximate equality
% exp(x) ~ 1+x/1!+x^3/2!+...+x^n/n!
% 0<x<n+1

syms x n;
u(x,n)=x^n/factorial(n)

% R(n)=x^(n+1)/(n+1)!+x^(n+2)/(n+2)!+...
% R(n)=x^n/n!*(x/(n+1)+x^2/((n+1)(n+2))+...)
% R(n)<x^n/n!*(x/(n+1)+(x/(n+1))^2+...) - geometrical series
% R(n)<x^n/n!*(x/(n+1))/(1-(x/(n+1)))
% R(n)<x^n/n!*(x/(n+1-x))