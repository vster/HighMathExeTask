clear 
syms t p

f=1
F=laplace(f,t,p)
% 1/p

syms n integer
assume(n>0)
f=t^n/factorial(n)
F=laplace(f,t,p)
% gamma(n + 1)/(p^(n + 1)*factorial(n))

syms alfa
f=exp(alfa*t)
F=laplace(f,t,p)
% -1/(alfa - p)

syms beta
f=cos(beta*t)
F=laplace(f,t,p)
% p/(beta^2 + p^2)

syms beta
f=sin(beta*t)
F=laplace(f,t,p)
% beta/(beta^2 + p^2)

f=exp(alfa*t)*cos(beta*t)
F=laplace(f,t,p)
% -(alfa - p)/(beta^2 + (alfa - p)^2)

f=exp(alfa*t)*sin(beta*t)
F=laplace(f,t,p)
% beta/(beta^2 + (alfa - p)^2)

f=t^n/factorial(n)*exp(alfa*t)
F=laplace(f,t,p)
% gamma(n + 1)/(factorial(n)*(p - alfa)^(n + 1))

f=t*cos(beta*t)
F=laplace(f,t,p)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)

f=t*sin(beta*t)
F=laplace(f,t,p)
% (2*beta*p)/(beta^2 + p^2)^2