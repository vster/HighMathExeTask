% Uniform density distribution
clear
digits(4)
I=[-1 1 3 5 7]
nx=[6 7 4 5 8]

X=[0 2 4 6 8]
n=sum(nx)
% 30
W=nx/n
% 0.2000    0.2333    0.1333    0.1667    0.2667
MX=sum(X.*W)
% 4.1333
MX2=sum(X.^2.*W)
% 26.1333
DX=MX2-MX^2
% 9.0489
syms a b
eq1=(a+b)/2==4.1333
eq2=(b-a)/(2*sqrt(3))==sqrt(9.0489)
[a1,b1]=solve(eq1,eq2)
a1=vpa(a1)
% -1.077
b1=vpa(b1)
% 9.344
syms x
f=piecewise(x<a1,0,a1<=x<=b1,1/(b1-a1),x>b1,0)