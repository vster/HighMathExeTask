clear
syms t p a b
f=t*cosh(b*t)

F=int(exp(-p*t)*f,t,0,inf)
% - limit(exp(-p*t)*(b^2*cosh(b*t) + p^2*cosh(b*t) + p^3*t*cosh(b*t) - b^3*t*sinh(b*t) + 2*b*p*sinh(b*t) - b^2*p*t*cosh(b*t) + b*p^2*t*sinh(b*t)), t, Inf)/(b^2 - p^2)^2 + (b^2 + p^2)/(b^2 - p^2)^2

F=laplace(f,t,p)
% 1/(b^2 - p^2) + (2*p^2)/(b^2 - p^2)^2

f1=simplify(ilaplace(F,p,t))
% t*cosh(b*t)