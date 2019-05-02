clear
digits(6)
syms x
f(x)=1/x^2
a=1
b=2
n=10

[I1,Rn1]=intsimps(f,a,b,n)
% 0.500012
% 0.0000666667 ~ 0.0001
[I2,Rn2]=intrect(f,a,b,n)
% 0.538955
% 0.1
[I3,Rn3]=inttrap(f,a,b,n)
% 0.501455
% 0.005