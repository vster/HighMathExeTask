clear
syms t p a b
f(t)=(exp(a*t)-exp(b*t))/t
F1=laplace(f,t,p)
% log((b - p)/(a - p))
f1=ilaplace(F1,p,t)
% exp(a*t)/t - exp(b*t)/t
