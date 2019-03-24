clear
syms t p real
F=p/((p-1)^3*(p+2)^2)

f=ilaplace(F,p,t)
% exp(-2*t)/27 - exp(t)/27 + (2*t*exp(-2*t))/27 + (t^2*exp(t))/18 + (t*exp(t))/27

F1=simplify(laplace(f,t,p))
% p/((p - 1)^3*(p + 2)^2)