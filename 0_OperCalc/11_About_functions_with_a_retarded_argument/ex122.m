clear
syms t p 
f(t)=(t^2-6*t+11)*heaviside(t-2)
F(p)=laplace(f(t),t,p)
% exp(-2*p)*(2/p^3 - (6*(p/6 + 1))/p^2 + (4*(p + 1))/p^2)
