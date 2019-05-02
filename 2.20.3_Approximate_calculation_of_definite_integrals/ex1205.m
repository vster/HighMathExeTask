clear
digits(8)
syms x
f(x)=1/(1+x^2)
a=0
b=1
n=8

[I1,Rn1]=intsimps(f,a,b,n)
% 0.78539813
% 0.0000325521
[I2,Rn2]=intsimps(f,a,b,n/2)
% 0.78539216
delta=(I1-I2)/15
% 3.97917e-7 ~ 4e-7

I=vpa(int(f,x,a,b))
% 0.78539816



