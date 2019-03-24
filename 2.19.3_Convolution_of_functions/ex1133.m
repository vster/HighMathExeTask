clear
syms t p
F=p^2/(p^2+1)^2

f=ilaplace(F,p,t)
% sin(t)/2 + (t*cos(t))/2

F1=p/(p^2+1)
% F=F1*F1
f1(t)=ilaplace(F1,p,t)
% cos(t)

syms tau
f=int(f1(t-tau)*f1(tau),tau,0,t)
% sin(t)/2 + (t*cos(t))/2

