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
x1=solvechord(f,a,b,err)
% 2.09431
x2=solvetan(f,a,b,err)
% 2.09455
x3=solvechordtan(f,a,b,err)
% 2.0948

for k=1:4
    ksi1(k)=solvecheb(f,a,k);
end
ksi1
% [ 2.1, 2.09434, 2.09456, 2.09455]