clear
digits(4)
syms x y
f(x,y)=sqrt(x+y+1)
x1=0
x2=4
y1=1
y2=7

I0=vpa(int(int(f,y,y1,y2),x,x1,x2))
% 62.74

% 1)
a=0
b=4
c=1
d=7
m=4
n=4
X=0:(4-0)/4:4
Y=1:(7-1)/4:7
Z=zeros(5,5);
for i=1:5
    for j=1:5
        Z(i,j)=f(i,j);
    end
end
Z
S0=Z(1,1)+Z(1,5)+Z(5,1)+Z(5,5)
S1=sum(Z(2:4,1)+Z(2:4,5))+sum(Z(1,2:4)+Z(5,2:4))
S2=sum(sum(Z(2:4,2:4)))
I1=(b-a)*(d-c)*(S0+2*S1+4*S2)/(4*m*n)
% 62.9824

% 3)
% M=vpa(max(f(X,Y)))
M=4
N=1000
ksi=rand(1,N);
eta=rand(1,N);
dzeta=rand(1,N);
X=a+(b-a)*ksi;
Y=c+(d-c)*eta;
Z=4*dzeta;
Y1=1;
Y2=7;
F=sqrt(X+Y+1);
n=0;
for i=1:N
    if (Y(i)>Y1) && (Y(i)<Y2) && (Z(i)<F(i))
        n=n+1;
    end
end
n
I2=(b-a)*(d-c)*M*n/N
delta=abs(I2-I0)/I0*100


