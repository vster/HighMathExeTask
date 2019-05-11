clear
digits(4)
syms x y
f(x,y)=sqrt(x+y)
x1=0
x2=4
y1=3*x
y2=8*x

I1=vpa(int(int(f,y,y1,y2),x,x1,x2))
% 162.1

a=0
b=4
c=0
d=32
M=6
N=1000
ksi=rand(1,N);
eta=rand(1,N);
dzeta=rand(1,N);
X=4*ksi;
Y=32*eta;
Z=6*dzeta;
Y1=3*X;
Y2=8*X;
F=(X+Y).^(1/2);
n=0;
for i=1:N
    if (Y(i)>Y1(i)) && (Y(i)<Y2(i)) && (Z(i)<F(i))
        n=n+1;
    end
end
n
I2=(b-a)*(d-c)*M*n/N
delta=abs(I2-I1)/I1*100
