clear
syms t p 
F=1/(7-p+p^2)
f=ilaplace(F,p,t)
% (2*3^(1/2)*exp(t/2)*sin((3*3^(1/2)*t)/2))/9
F2=laplace(f,t,p)
% 1/((p - 1/2)^2 + 27/4)
F2=collect(F2)
% 1/(p^2 - p + 7)