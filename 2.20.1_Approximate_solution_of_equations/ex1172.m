clear
syms x
f(x)=x^3-2*x-5

fplot(f(x))
grid on
% [2;3]

a=2;
b=3;
err=0.001;
digits(6)
xsol1=solvechord(f,a,b,err)
% 2.09431
xsol2=solvetan(f,a,b,err)
% 2.09455
xsol3=solvechordtan(f,a,b,err)
% 2.0948