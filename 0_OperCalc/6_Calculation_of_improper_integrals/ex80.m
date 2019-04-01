clear
syms x t p
I1=int(t*exp(-x*t)/(t^2+1),t,0,inf)

F1=laplace(I1,x,p)
% 
f1=ilaplace(F1,p,x)

I2=int(cos(x*t)/(t+1),t,0,inf)
% 
F2=laplace(I2,x,p)
% 
f2=ilaplace(F2,p,x)