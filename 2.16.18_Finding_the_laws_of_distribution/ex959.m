% Uniform density distribution
clear
digits(4)
I=[1 10 20 30 40 50]
nx=[11 14 15 10 14 16]

X=[5 15 25 35 45 55]
T=[1 3 5 7 9 11]
n=sum(nx)
% 80
W=nx/n
% 0.1375    0.1750    0.1875    0.1250    0.1750    0.2000
MX=sum(X.*W)
% 31.2500
MX2=sum(X.^2.*W)
% 1.2725e+03
DX=MX2-MX^2
% 295.9375
syms a b
eq1=(a+b)/2==31.25
eq2=(b-a)/(2*sqrt(3))==sqrt(295.9375)
[a1,b1]=solve(eq1,eq2)
a1=vpa(a1)
% 1.454
b1=vpa(b1)
% 61.05
syms x
f=piecewise(x<a1,0,a1<=x<=b1,1/(b1-a1),x>b1,0)