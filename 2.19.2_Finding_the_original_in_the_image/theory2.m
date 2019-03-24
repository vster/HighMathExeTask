clear 
syms t p
syms n integer
assume(n>0)
syms alfa beta

f=1
F=laplace(f,t,p)
% 1/p
f1=ilaplace(F,p,t)
% 1

f=t^n/factorial(n)
F=laplace(f,t,p)
% gamma(n + 1)/(p^(n + 1)*factorial(n))
f1=ilaplace(F,p,t)
% t^n/factorial(n)

f=exp(alfa*t)
F=laplace(f,t,p)
% -1/(alfa - p)
f1=ilaplace(F,p,t)
% exp(alfa*t)

f=cos(beta*t)
F=laplace(f,t,p)
% p/(beta^2 + p^2)
f1=ilaplace(F,p,t)
% cos(beta*t)

f=sin(beta*t)
F=laplace(f,t,p)
% beta/(beta^2 + p^2)
f1=ilaplace(F,p,t)
% sin(beta*t)

f=exp(alfa*t)*cos(beta*t)
F=laplace(f,t,p)
% -(alfa - p)/(beta^2 + (alfa - p)^2)
f1=ilaplace(F,p,t)
% exp(alfa*t)*cosh(beta*t*1i)

f=exp(alfa*t)*sin(beta*t)
F=laplace(f,t,p)
% beta/(beta^2 + (alfa - p)^2)
f1=ilaplace(F,p,t)
% exp(alfa*t)*sin(beta*t)

f=t^n/factorial(n)*exp(alfa*t)
F=laplace(f,t,p)
% gamma(n + 1)/(factorial(n)*(p - alfa)^(n + 1))
f1=ilaplace(F,p,t)
% (t^n*exp(alfa*t))/factorial(n)

f=t*cos(beta*t)
F=laplace(f,t,p)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)
f1=ilaplace(F,p,t)
f1=simplify(f1)
% t*cos(beta*t)

f=t*sin(beta*t)
F=laplace(f,t,p)
% (2*beta*p)/(beta^2 + p^2)^2
f1=ilaplace(F,p,t)
% t*sin(beta*t)