clear
digits(4)
syms x
f(x)=sqrt(x)
a=1
b=2
n=10
h=(b-a)/n
X=a:h:b
Y=vpa(f(X))
I=h*((Y(1)+Y(n+1))/2+sum(Y(2:n)))
% 1.219

d2f(x)=diff(f,x,2)
% -1/(4*x^(3/2))
M2=max(abs(d2f(X)))
% 1/4
Rn=vpa(h^2/12*(b-a)*M2)
% 0.0002083 ~ 0.0002

[I1,Rn1]=inttrap(f,a,b,n)
% I1 =
% 1.219
% Rn1 =
% 0.0002083

