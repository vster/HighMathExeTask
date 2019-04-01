clear
syms t p T
assume(T>0)
F=(2-p*T-(2+p*T)*exp(-p*T))/(p^3*(1-exp(-p*T)))
f=ilaplace(F,p,t)
% 
f=simplify(f)
% 
F2=laplace(f,t,p)
% 
F2=collect(F2)