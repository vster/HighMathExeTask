clear
syms x
f(x)=x^3-9*x^2+18*x-1

fplot(f(x))
grid on
% [0;1], [2;3]

a=0;
b=1;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% 0.056803
x2=solvetan(f,a,b,err)
% 0.05718
x3=solvechordtan(f,a,b,err)
% 0.057198

a=2;
b=3;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% 2.8887
x2=solvetan(f,a,b,err)
% 2.8887
x3=solvechordtan(f,a,b,err)
% 2.8887