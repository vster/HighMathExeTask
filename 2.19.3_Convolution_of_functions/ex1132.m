clear
syms t p real
f1(t)=t
f2(t)=cos(t)

syms tau
fc=int(f1(t-tau)*f2(tau),tau,0,t)
% 1 - cos(t)

Fc=collect(laplace(fc,t,p))
% 1/(p^3 + p)

F1=laplace(f1,t,p)
% 1/p^2
F2=laplace(f2,t,p)
% p/(p^2 + 1)

Fc2=simplify(F1*F2)
% 1/(p^3 + p)