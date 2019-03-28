clear 
syms t p
syms alfa beta lam omega
syms n integer
assume(n>0)

f=1
F=laplace(f,t,p)
% 1/p

f=t^n
F=laplace(f,t,p)
% gamma(n + 1)/p^(n + 1)

f=exp(lam*t)
F=laplace(f,t,p)
% -1/(lam - p)

f=sin(omega*t)
F=laplace(f,t,p)
% omega/(omega^2 + p^2)

f=cos(omega*t)
F=laplace(f,t,p)
% p/(omega^2 + p^2)

f=sinh(omega*t)
F=laplace(f,t,p)
% -omega/(omega^2 - p^2)

f=cosh(omega*t)
F=laplace(f,t,p)
% -p/(omega^2 - p^2)

f=sin(t-alfa)
F=laplace(f,t,p)
% (cos(alfa) - p*sin(alfa))/(p^2 + 1)

f=cos(t-alfa)
F=laplace(f,t,p)
% (sin(alfa) + p*cos(alfa))/(p^2 + 1)

f=exp(alfa*t)*cos(beta*t)
F=laplace(f,t,p)
% -(alfa - p)/(beta^2 + (alfa - p)^2)

f=exp(alfa*t)*sin(beta*t)
F=laplace(f,t,p)
% beta/(beta^2 + (alfa - p)^2)

f=t^n*exp(alfa*t)
F=laplace(f,t,p)
% gamma(n + 1)/(p - alfa)^(n + 1)

f=t*cos(beta*t)
F=laplace(f,t,p)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)

f=t*sin(beta*t)
F=laplace(f,t,p)
% (2*beta*p)/(beta^2 + p^2)^2

f=t^n*sin(omega*t)
F=laplace(f,t,p)
% -(gamma(n + 1)*(1/(p - omega*1i)^(n + 1) - 1/(p + omega*1i)^(n + 1))*1i)/2

f=t^n*cos(omega*t)
F=laplace(f,t,p)
% (gamma(n + 1)*(1/(p - omega*1i)^(n + 1) + 1/(p + omega*1i)^(n + 1)))/2

f=t^n*exp(alfa*t)*sin(omega*t)
F=laplace(f,t,p)
% -(gamma(n + 1)*(1/(p - omega*1i - alfa)^(n + 1) - 1/(p - alfa + omega*1i)^(n + 1))*1i)/2

f=t^n*exp(alfa*t)*cos(omega*t)
F=laplace(f,t,p)
% (gamma(n + 1)*(1/(p - omega*1i - alfa)^(n + 1) + 1/(p + omega*1i - alfa)^(n + 1)))/2