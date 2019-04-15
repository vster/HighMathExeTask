clear
syms x
f(x)=x^3+3*x+5

fplot(f(x))
grid on
% [-2;-1]

a=-2;
b=-1;
err=0.001;
digits(6)
x1=solvechord(f,a,b,err)
% -1.1542
x2=solvetan(f,a,b,err)
% -1.15417
x3=solvechordtan(f,a,b,err)
% -1.15431