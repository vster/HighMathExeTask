clear
syms t p a
assume(a>0)
f=exp(t*log(a))

F=int(exp(-p*t)*f,t,0,inf)
% 1/(p - log(a)) - limit(a^t*exp(-t*p), t, Inf)/(p - log(a))

F=laplace(f,t,p)
% 1/(p - log(a))

f1=ilaplace(F,p,t)
% exp(t*log(a))