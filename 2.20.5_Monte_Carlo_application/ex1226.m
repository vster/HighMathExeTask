clear
digits(4)
syms x y z
f(x,y,z)=x+y+2*z
% 1<=x<=3
% 0<=y<=x
% x+y<=z<=x+2*y

I0=int(int(int(f,z,x+y,x+2*y),y,0,x),x,1,3)
I0=vpa(I0)
% 56.67

a=1
b=3
c=0
d=3
g=1
h=9

% X=a:(b-a)/2:b
% Y=c:(d-c)/2:d
% Z=g:(h-g)/2:h
% M=max(f(X,Y,Z))
M=24;
N=1000;
ksi=rand(1,N);
eta=rand(1,N);
dzeta=rand(1,N);
sigma=rand(1,N);
X=1+2*ksi;
Y=3*eta;
Z=1+8*dzeta;
u=24*sigma;
Y1=0;
Y2=X;
Z1=X+Y;
Z2=X+2*Y;
U=X+Y+2*Z;
n=0;
for i=1:N
    if (Y(i)>Y1) && (Y(i)<Y2(i)) && ...
       (Z(i)>Z1(i)) && (Z(i)<Z2(i)) && u(i)<U(i)
        n=n+1;
    end
end
n
I2=(b-a)*(d-c)*(h-g)*M*n/N
delta=abs(I2-I0)/I0*100

