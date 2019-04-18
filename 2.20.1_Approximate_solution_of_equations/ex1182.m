clear
syms x
f(x)=2*x-cos(x)
err=0.001
digits(6)

fplot(f)
grid on
a=0
b=0.5

x1=solvetrial(f,a,b,err)
% 0.450195
x2=solvechord(f,a,b,err)
% 0.450183
x3=solvetan(f,a,b,err)
% 0.450184
x4=solvechordtan(f,a,b,err)
% 0.450164