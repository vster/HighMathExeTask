clear
syms t p T A
f(t)=piecewise(0<=t<=T/2,A*sin(2*pi*t/T),T/2<=t<T,0)
F=laplace(f,t,p)
% 
F2=1/(1-exp(-p*t))*int(f*exp(-p*t),t,0,T) 
% -(2*A*T*pi*exp(-(T*p)/2)*(exp((T*p)/2) + 1))/((exp(-p*t) - 1)*(T^2*p^2 + 4*pi^2))
