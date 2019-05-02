clear
digits(5)
syms x
f(x)=sqrt(x)
a=1
b=2
n=10
h=(b-a)/n
X=a:h:(b-h)
%     1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    
%     1.6000    1.7000    1.8000    1.9000
Y=vpa(f(X))
% [ 1.0, 1.049, 1.095, 1.14, 1.183, 1.225, 1.265, 1.304, 1.342, 1.378]
I=h*sum(Y)
% 1.198

df(x)=diff(f)
% 1/(2*x^(1/2))
M1=max(abs(df(X)))
% 1/2
Rn=vpa(h/2*(b-a)*M1)
% 0.025

[I1,Rn1]=intrect(f,a,b,n)
% I1 =
% 1.198
% Rn1 =
% 0.025

