clear
syms t p T A
f(t)=piecewise(0<=t<=T/2,2*A*t/T,T/2<=t<T,2*A*(1-t/T))
F=laplace(f,t,p)
% 
F2=1/(1-exp(-p*t))*int(f*exp(-p*t),t,0,T) 
% 
F2=simplify(F2)
% 