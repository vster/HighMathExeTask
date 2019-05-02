clear
digits(6)
syms x
f(x)=sqrt(1-0.5*sin(x)^2)
a=0
b=pi/2
n=6

[I1,Rn1]=intsimps(f,a,b,n)
% 1.35064
% 0.0002
[I2,Rn2]=intrect(f,a,b,n)
% 1.38898
% 0.06
[I3,Rn3]=inttrap(f,a,b,n)
% 1.35064
% 0.006