clear
syms t p a b
f=t*sin(b*t)

F=int(exp(-p*t)*f,t,0,inf)
% - limit(exp(-p*t)*(p^2*sin(b*t) - b^2*sin(b*t) + b^3*t*cos(b*t) + p^3*t*sin(b*t) + 2*b*p*cos(b*t) + b*p^2*t*cos(b*t) + b^2*p*t*sin(b*t)), t, Inf)/(b^2 + p^2)^2 + (2*b*p)/(b^2 + p^2)^2

F=laplace(f,t,p)
% (2*b*p)/(b^2 + p^2)^2

f1=simplify(ilaplace(F,p,t))
% t*sin(b*t)