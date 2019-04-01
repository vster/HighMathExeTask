clear
syms t p T A
f(t)=piecewise(0<=t<=T/2,A,T/2<=t<T,-A)
F=laplace(f,t,p)
% 
F2=1/(1-exp(-p*t))*int(f*exp(-p*t),t,0,T) 
% 
F2=simplify(F2)
% -(A*exp(-T*p)*(exp((T*p)/2) - 1)^2)/(p*(exp(-p*t) - 1))