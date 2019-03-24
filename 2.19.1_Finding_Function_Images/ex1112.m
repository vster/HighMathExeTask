clear
syms t p a b
f=sin(t)^2

F=int(exp(-p*t)*f,t,0,inf)
% limit(- exp(-t*p)/(2*p) - (exp(-t*p)*(2*sin(2*t) - p*cos(2*t)))/(2*(p^2 + 4)), t, Inf) - p/(2*(p^2 + 4)) + 1/(2*p)

F=laplace(f,t,p)
% 2/(p*(p^2 + 4))

f1=simplify(ilaplace(F,p,t))
% 1/2 - cos(2*t)/2