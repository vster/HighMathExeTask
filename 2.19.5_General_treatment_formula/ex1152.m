clear
syms t p
fp=1/(p-1)^3

f1=ilaplace(fp,p,t)
% (t^2*exp(t))/2

Fp=exp(p*t)*fp
% exp(p*t)/(p - 1)^3

res1=1/factorial(2)*limit(diff((p-1)^3*Fp,p,2),p,1)
% (t^2*exp(t))/2

