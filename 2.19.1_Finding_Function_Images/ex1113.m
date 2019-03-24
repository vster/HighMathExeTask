clear
syms t p a b real
f=exp(t)*cos(t)^2

F=int(exp(-p*t)*f,t,0,inf)
% (p - 1)/(2*((p - 1)^2 + 4)) + 1/(2*(p - 1)) + limit((exp(t - t*p)*(2*sin(2*t) - cos(2*t)*(p - 1)))/(2*((p - 1)^2 + 4)) - exp(t - t*p)/(2*(p - 1)), t, Inf)

F=laplace(f,t,p)
% (p - 1)/(2*((p - 1)^2 + 4)) + 1/(2*(p - 1))

f1=simplify(ilaplace(F,p,t))
% (exp(t)*(cos(2*t) + 1))/2