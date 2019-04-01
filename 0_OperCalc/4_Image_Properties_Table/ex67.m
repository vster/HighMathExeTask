clear
syms t p T
F=(1/p^2-(T/2*1/p+1/p^2)*exp(-p*T/2))/(1-exp(-p*T))
f=ilaplace(F,p,t)
% 
f=simplify(f)
% 
F2=laplace(f,t,p)
% 
F2=collect(F2)