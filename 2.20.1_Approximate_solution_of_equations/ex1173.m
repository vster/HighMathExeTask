clear
syms x
f(x)=x^4-3*x+1

fplot(f(x))
grid on
% [0;1],[1;2]

a=0.1;
b=0.7;
err=0.001;
digits(6)
xsol1=solvechord(f,a,b,err)
% 0.337719
xsol2=solvetan(f,a,b,err)
% 0.337667
xsol3=solvechordtan(f,a,b,err)
% 0.33775

a=1;
b=2;
err=0.001;
digits(6)
xsol1=solvechord(f,a,b,err)
% 1.30635
xsol2=solvetan(f,a,b,err)
% 1.30749
xsol3=solvechordtan(f,a,b,err)
% 1.30749