clear
digits(6)
syms x
f(x)=log(x)/x
a=1
b=2
n=4

[I1,Rn1]=intsimps(f,a,b,n)
% 0.240031
% 0.00108507
[I2,Rn2]=intrect(f,a,b,n)
% 0.19215134
% 0.125
[I3,Rn3]=inttrap(f,a,b,n)
% 0.235473
% 0.015625