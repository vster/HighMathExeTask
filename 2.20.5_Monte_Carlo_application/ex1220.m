clear
syms x
f=x^2+x^3
a=2
b=3
I1=vpa(int(f,x,a,b))
% 22.58

n=100;
T=rand(1,n);
X=2+T;
F=X.^2+X.^3;
I2=(b-a)/n*sum(F)
% 22.4269

delta=abs(I1-I2)/I1*100