syms t p real
assume(p>0)

f(t)=1
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% 1/p

syms n integer
f(t)=t^n/factorial(n)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% 1/p^(n + 1)

syms alfa real
f(t)=exp(alfa*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% piecewise(p <= alfa, Inf, alfa < p | alfa < 0, -1/(alfa - p))

syms beta real
f(t)=cos(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% p/(beta^2 + p^2)

syms beta real
f(t)=sin(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% beta/(beta^2 + p^2)

f(t)=exp(alfa*t)*cos(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% limit(exp(t*alfa - t*p)*(beta*sin(t*beta) + cos(t*beta)*(alfa - p)), t, Inf)/(beta^2 + (alfa - p)^2) - (alfa - p)/(beta^2 + (alfa - p)^2)

f(t)=exp(alfa*t)*sin(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% - limit(exp(alfa*t - p*t)*(beta*cos(beta*t) - sin(beta*t)*(alfa - p)), t, Inf)/(beta^2 + (alfa - p)^2) + beta/(beta^2 + (alfa - p)^2)

f(t)=t^n/factorial(n)*exp(alfa*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)

f(t)=t*cos(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)

f(t)=t*sin(beta*t)
F(p)=int(exp(-p*t)*f(t),t,0,inf)
% (2*beta*p)/(beta^2 + p^2)^2