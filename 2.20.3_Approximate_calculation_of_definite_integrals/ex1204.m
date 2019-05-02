clear
digits(6)
syms x
f(x)=sqrt(1+x^2)
Rn=1e-3
a=0
b=1

d4f(x)=simplify(diff(f,x,4))
% (3*(4*x^2 - 1))/(x^2 + 1)^(7/2)
X=a:(b-a)/20:b;
M3=max(abs(d4f(X)))
% 3
syms h
eq1=Rn-h^4/180*(b-a)*M3
h1=solve(eq1,h)
h=vpa(h1(2))
% 0.4949 ~ 0.5
h=0.5
X=a:h:b
%          0    0.5000    1.0000
Y=vpa(f(X))
% [ 1.0, 1.118, 1.4142]
I=h/3*((Y(1)+Y(3))+4*Y(2))
% 1.1477

digits(6)
I1=vpa(int(f,x,a,b))
err1=abs(I1-I)

n=4;
h=(b-a)/n;
X=a:h:b;
Y=vpa(f(X));
% [ 1.0, 1.00499, 1.0198, 1.04403, 1.07703, 1.11803, 1.16619, 1.22066, 1.28062, 1.34536, 1.41421]
S1=sum(Y(2:2:n));
S2=sum(Y(3:2:n));
I2=h/3*((Y(1)+Y(n+1))+4*S1+2*S2)
% 1.14778
err2=abs(I2-I1)

d4f(x)=simplify(diff(f,x,4));
M3=max(abs(d4f(X)));
Rn=vpa(h^4/180*(b-a)*M3)

[I4,Rn4]=intsimps(f,a,b,n)
% I4 =
% 1.14778
% Rn4 =
% 0.0000651042

