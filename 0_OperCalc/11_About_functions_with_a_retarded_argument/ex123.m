clear
syms t p 
f(t)=3*heaviside(t)+(6-3/2*t)*heaviside(t-4)-(9-3/2*t)*heaviside(t-6)
F(p)=laplace(f(t),t,p)
% (3*exp(-6*p))/(2*p^2) - (3*exp(-4*p))/(2*p^2) + 3/p