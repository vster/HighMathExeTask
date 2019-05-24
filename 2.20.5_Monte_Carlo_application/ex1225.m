clear
digits(4)
syms x y
f(x,y)=cos(y)/x
x1=0.2
x3=1
y1=0
y3=x

I0=int(int(f,y,y1,y3),x,x1,x3)
I0=vpa(I0)
% 0.7465

% 1)
x2=(x1+x3)/2
y2=(y1+y3)/2

X(1)=x1
X(2)=x2
X(3)=x3

Y=zeros(3,3);
for i=1:3
    Y(i,1)=subs(y1,x,X(i));
    Y(i,2)=subs(y2,x,X(i));
    Y(i,3)=subs(y3,x,X(i));
end
Y

for i=1:3
    for j=1:3
        Z(i,j)=vpa(f(X(i),Y(i,j)));
    end
end
Z
I1=(X(3)-X(1))/36*((Y(1,3)-Y(1,1))*(Z(1,1)+4*Z(1,2)+Z(1,3))+...
    4*(Y(2,3)-Y(2,1))*(Z(2,1)+4*Z(2,2)+Z(2,3))+...
    (Y(3,3)-Y(3,1))*(Z(3,1)+4*Z(3,2)+Z(3,3)))
% 0.7466

% 2)
a=0.2
b=1
c=0
d=1
% X=a:(b-a)/2:b
% Y=c:(d-c)/2:d
% M=max(f(X,Y))
M=5
N=10000
ksi=rand(1,N);
eta=rand(1,N);
dzeta=rand(1,N);
X=a+(b-a)*ksi;
Y=c+(d-c)*eta;
Z=M*dzeta;
Y1=0
Y2=X;
F=cos(Y)./X;
n=0;
for i=1:N
    if (Y(i)>Y1) && (Y(i)<Y2(i)) && (Z(i)<F(i))
        n=n+1;
    end
end
n
I2=(b-a)*(d-c)*M*n/N
delta=abs(I2-I0)/I0*100