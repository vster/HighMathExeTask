clear 
syms t p
F=p/(p^4-1)

f=ilaplace(F,p,t)
% exp(-t)/4 - cos(t)/2 + exp(t)/4   
% = 1/2*(cosh(t)-cos(t))

F1=p/(p^2-1)
F2=1/(p^2+1)

f1=ilaplace(F1,p,t)
% exp(-t)/2 + exp(t)/2 = cosh(t)
f1(t)=cosh(t)
f2(t)=ilaplace(F2,p,t)
% sin(t)

syms tau
f=int(f1(t-tau)*f2(tau),tau,0,t)
% cosh(t)/2 - cos(t)/2