clear
syms x
f(x)=x^4+5*x-7

fplot(f(x))
grid on
% [-3;-2], [1;2]

a=-3;
b=-2;
err=0.001;
digits(6)
xsol1=solvechord(f,a,b,err)
% -2.03586
xsol2=solvetan(f,a,b,err)
% -2.03588
xsol3=solvechordtan(f,a,b,err)
% -2.0359

a=1;
b=2;
err=0.001;
digits(6)
xsol1=solvechord(f,a,b,err)
% 1.10251
xsol2=solvetan(f,a,b,err)
% 1.10347
xsol3=solvechordtan(f,a,b,err)
% 1.10347