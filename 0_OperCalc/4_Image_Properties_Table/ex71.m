clear
syms t p T A
f(t)=piecewise(0<=t<=T,A*(1-t/T))
F=laplace(f,t,p)
% 
F2=1/(1-exp(-p*t))*int(f*exp(-p*t),t,0,T) 
% -(A/p - A/(T*p^2) + (A*exp(-T*p))/(T*p^2))/(exp(-p*t) - 1)

 