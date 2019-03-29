clear
syms t p 
F=(p+2)/((p+1)*(p-2)*(p^2+4))
f=ilaplace(F,p,t)
% exp(2*t)/6 - exp(-t)/15 - cos(2*t)/10 - sin(2*t)/5
F2=laplace(f,t,p)
% 1/(6*(p - 2)) - 1/(15*(p + 1)) - p/(10*(p^2 + 4)) - 2/(5*(p^2 + 4))
F2=collect(F2)
% (p + 2)/(p^4 - p^3 + 2*p^2 - 4*p - 8)