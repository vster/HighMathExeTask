clear
syms t p real
f=cos(t)^3

F=int(exp(-p*t)*f,t,0,inf)
% (3*p)/(4*(p^2 + 1)) + p/(4*(p^2 + 9)) + limit(exp(-t*p)*((3*(sin(t) - p*cos(t)))/(p^2 + 1) + (3*sin(3*t) - p*cos(3*t))/(p^2 + 9)), t, Inf)/4

F=laplace(f,t,p)
% (p^3 + 7*p)/((p^2 + 1)*(p^2 + 9))

f1=simplify(ilaplace(F,p,t))
% cos(t)^3