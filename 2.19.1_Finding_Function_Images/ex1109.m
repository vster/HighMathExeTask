clear
syms t p b real
f=sinh(b*t)
F=int(exp(-p*t)*f,t,0,inf)
% limit(exp(- t*b - t*p)*(b - p + b*exp(2*t*b) + p*exp(2*t*b)), t, Inf)/(2*(b^2 - p^2)) - b/(b^2 - p^2)
F=laplace(f,t,p)
% -b/(b^2 - p^2)