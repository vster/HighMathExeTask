clear
syms t p a b real
f=cosh(b*t)
F=int(exp(-p*t)*f,t,0,inf)
% limit(exp(- t*b - t*p)*(p - b + b*exp(2*t*b) + p*exp(2*t*b)), t, Inf)/(2*(b^2 - p^2)) - p/(b^2 - p^2)
F=laplace(f,t,p)
% -p/(b^2 - p^2)