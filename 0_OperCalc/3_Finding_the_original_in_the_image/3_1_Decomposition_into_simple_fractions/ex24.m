clear
syms t p 
F=1/(p^2+1)^2
f=ilaplace(F,p,t)
% sin(t)/2 - (t*cos(t))/2
F2=laplace(f,t,p)
% 1/(p^2 + 1) - p^2/(p^2 + 1)^2
F2=collect(F2)
% 1/(p^4 + 2*p^2 + 1)