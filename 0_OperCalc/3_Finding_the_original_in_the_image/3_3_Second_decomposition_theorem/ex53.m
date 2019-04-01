clear
syms t p
F=(3*p^2-1)/(p^2+1)^3
f=ilaplace(F,p,t)
% (3*sin(t))/2 + (t^2*((3*cos(t))/t - sin(t)*(3/t^2 - 1)))/2 - (3*t*cos(t))/2
f=simplify(f)
% (t^2*sin(t))/2
F2=laplace(f,t,p)
% (4*p^2)/(p^2 + 1)^3 - 1/(p^2 + 1)^2
F2=collect(F2)
% (3*p^2 - 1)/(p^6 + 3*p^4 + 3*p^2 + 1)