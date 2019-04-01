clear
syms t p a b tau
f=exp(t-tau)
F=laplace(f,t,p)
% exp(-tau)/(p - 1)
f2=ilaplace(F,p,t)
% exp(-tau)*exp(t)