clear
syms t x p
f=int((x*t-sin(x*t))/(t^3*sqrt(t)),t,0,inf)
% 

F=laplace(f,t,p)
% 
f1=ilaplace(F,p,t)
% 