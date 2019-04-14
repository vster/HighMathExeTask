clear
syms x
f(x)=x^4+3*x-20

fplot(f(x))
grid on
% [-3;-2],[1;2]

a=1;
b=2;
err=0.001;
digits(5)
xsol1=solvechord(f,a,b,err)
% 1.94
xsol2=solvetan(f,a,b,err)
% 1.94
xsol3=solvechordtan(f,a,b,err)
% 1.94

a=-3;
b=-2;
err=0.001;
digits(4)
xsol1=solvechord(f,a,b,err)
% -2.277
xsol2=solvetan(f,a,b,err)
% -2.276
xsol3=solvechordtan(f,a,b,err)
% -2.276

