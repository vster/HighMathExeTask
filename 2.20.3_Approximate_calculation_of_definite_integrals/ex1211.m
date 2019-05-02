clear
digits(6)
syms x
f(x)=exp(-x^2)
a=0
b=1
n=4

[I1,Rn1]=intsimps(f,a,b,n)
% 0.746855
% 0.00026
[I2,Rn2]=intrect(f,a,b,n)
% 0.821999
% 0.106834
[I3,Rn3]=inttrap(f,a,b,n)
% 0.742984
% 0.0104167