clear
syms t p a
f=a^t
f=exp(t*log(a))
F=laplace(f,t,p)
% 1/(p - log(a))
f2=ilaplace(F,p,t)
% exp(t*log(a))
