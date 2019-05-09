clear
syms x
f=x^2+x^3
a=2
b=3
I1=vpa(int(f,x,a,b))
% 22.58

N=100;
ksi=rand(1,N);
eta=rand(1,N);
x1=a:(b-a)/N:b;
mf=max(x1.^2+x1.^3);
% 36
xi=2+ksi;
yi=mf*eta;
Y=xi.^2+xi.^3;
n=0;
for i=1:N
    if yi(i)<Y(i)
        n=n+1;
    end
end
I2=mf*n/N
% 23.4000

delta=abs(I1-I2)/I1*100