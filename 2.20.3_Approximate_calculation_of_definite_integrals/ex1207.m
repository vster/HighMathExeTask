clear
digits(6)
syms x
f(x)=1/(sqrt(x)+1)
a=4
b=8
n=8

[I1,Rn1]=intsimps(f,a,b,n)
% 1.169172
[I2,Rn2]=intsimps(f,a,b,n/2)
% 1.1691895
delta=(I1-I2)/15
% 0.00000117036 ~ 0.000001

I=vpa(int(f,x,a,b))
% 1.16917