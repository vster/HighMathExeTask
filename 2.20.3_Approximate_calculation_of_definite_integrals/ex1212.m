clear
digits(6)
syms x
f(x)=cos(x)/(1+x)
a=0
b=pi/2
n=6

[I1,Rn1]=intsimps(f,a,b,n)
% 0.673689
% 0.0005
[I2,Rn2]=intrect(f,a,b,n)
% 0.807991
% 0.2
[I3,Rn3]=inttrap(f,a,b,n)
% 0.677092
% 0.009