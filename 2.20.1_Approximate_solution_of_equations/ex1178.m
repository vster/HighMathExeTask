% 5. Trial method

clear
syms x
f(x)=x+exp(x)
err=0.001
digits(6)

% fplot(f)
% grid on
a=-1
b=0
vpa(f(a)) % -0.632121
vpa(f(b)) % 1.0

x1=solvetrial(f,a,b,err)
% -0.567383
x2=solvechord(f,a,b,err)
% -0.567206
x3=solvetan(f,a,b,err)
% -0.567143
x4=solvechordtan(f,a,b,err)
% -0.567078

