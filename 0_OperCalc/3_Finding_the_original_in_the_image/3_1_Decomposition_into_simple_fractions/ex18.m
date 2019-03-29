clear
syms t p 
F=1/(p^3-8)
f=ilaplace(F,p,t)
% exp(2*t)/12 - (exp(-t)*(cos(3^(1/2)*t) + 3^(1/2)*sin(3^(1/2)*t)))/12
F2=laplace(f,t,p)
% 1/(12*(p - 2)) - (p + 1)/(12*((p + 1)^2 + 3)) - 1/(4*((p + 1)^2 + 3))
F2=simplify(F2)
% 1/(p^3 - 8)