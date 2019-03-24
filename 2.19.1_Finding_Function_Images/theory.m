syms t p alfa beta
assume(p>0)
syms n integer

f=1
F=int(exp(-p*t)*f,t,0,inf)
% 1/p
F=laplace(f,t,p)
% 1/p

f=t^n/factorial(n)
F=int(exp(-p*t)*f,t,0,inf)
% 1/p^(n + 1)
F=laplace(f,t,p)
% piecewise(0 <= n, gamma(n + 1)/(p^(n + 1)*factorial(n)))

f=exp(alfa*t)
F=int(exp(-p*t)*f,t,0,inf)
% piecewise(p <= alfa, Inf, alfa < p | alfa < 0, -1/(alfa - p))
F=laplace(f,t,p)
% -1/(alfa - p)

f=cos(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% p/(beta^2 + p^2)
F=laplace(f,t,p)
% p/(beta^2 + p^2)

f=sin(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% beta/(beta^2 + p^2)
F=laplace(f,t,p)


f=exp(alfa*t)*cos(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% limit(exp(t*alfa - t*p)*(beta*sin(t*beta) + cos(t*beta)*(alfa - p)), t, Inf)/(beta^2 + (alfa - p)^2) - (alfa - p)/(beta^2 + (alfa - p)^2)
F=laplace(f,t,p)
% beta/(beta^2 + p^2)

f=exp(alfa*t)*sin(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% - limit(exp(alfa*t - p*t)*(beta*cos(beta*t) - sin(beta*t)*(alfa - p)), t, Inf)/(beta^2 + (alfa - p)^2) + beta/(beta^2 + (alfa - p)^2)
F=laplace(f,t,p)
% beta/(beta^2 + (alfa - p)^2)

f=t^n/factorial(n)*exp(alfa*t)
F=int(exp(-p*t)*f,t,0,inf)
% piecewise(0 <= n, ((1/(-1)^n*limit(igamma(n + 1, -t*(alfa - p)), t, Inf))/((alfa - p)^n*(alfa - p)) - (1/(-1)^n*gamma(n + 1))/((alfa - p)^n*(alfa - p)))/factorial(n), n <= -1, int(t^n*exp(t*alfa)*exp(-t*p), t, 0, Inf)/factorial(n))
F=laplace(f,t,p)
% piecewise(0 <= n, gamma(n + 1)/(factorial(n)*(- alfa + p)^(n + 1)))

f=t*cos(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)
F=laplace(f,t,p)
% (2*p^2)/(beta^2 + p^2)^2 - 1/(beta^2 + p^2)

f=t*sin(beta*t)
F=int(exp(-p*t)*f,t,0,inf)
% (2*beta*p)/(beta^2 + p^2)^2
F=laplace(f,t,p)
% (2*beta*p)/(beta^2 + p^2)^2