clear
digits(6)
syms x
f(x)=1/x
a=1
b=2
n=5

[I2,Rn2]=intrect(f,a,b,n)
% 0.745635
% 0.1
[I3,Rn3]=inttrap(f,a,b,n)
% 0.695635
% 0.007