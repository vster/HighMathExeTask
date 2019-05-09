syms x y
digits(6)
f(x,y)=x^2+y^2
x1=0
x2=4
y1=1
y2=5

I=vpa(int(int(f,y,y1,y2),x,x1,x2))
% 250.667

dfx=diff(f,x) % 2*x
dfy=diff(f,y) % 2*y
d2fx=diff(f,x,2) % 2
d2fy=diff(f,y,2) % 2
d2fxy=diff(f,x,y) % 0

m=4
n=4

X=x1:(x2-x1)/4:x2
%      0     1     2     3     4
Y=y1:(y2-y1)/4:y2
%      1     2     3     4     5
Z=zeros(5,5);
for i=1:5
    for j=1:5
        Z(i,j)=X(i)^2+Y(j)^2;        
    end
end
Z
S0=Z(1,1)+Z(m+1,1)+Z(1,n+1)+Z(m+1,n+1)
%    84
S1=sum(Z(2:m,1)+Z(2:m,n+1))+sum(Z(1,2:n)+Z(m+1,2:n))
%    212
S2=sum(sum(Z(2:m,2:n)))
%    129
I1=1/4*(S0+2*S1+4*S2)
%    256

for i=1:4
    Xm(i)=(X(i)+X(i+1))/2;
end
Xm
for j=1:4
    Ym(j)=(Y(j)+Y(j+1))/2;
end
Ym
for i=1:4
    for j=1:4
        Zm(i,j)=Xm(i)^2+Ym(j)^2;
    end
end
Zm
I2=(x2-x1)*(y2-y1)/(m*n)*sum(sum(Zm))
%    248
% 248<I<256 I=250.667
delta1=(I1-I)/I*100
% 2.1%
delta2=(I-I2)/I*100
% 1.1%

a=0
b=4
c=1
d=5
I3=vpa((b-a)*(d-c)/12*(f(a,c)+f(a,d)+f(b,c)+f(b,d)+...
    8*f((a+b)/2,(c+d)/2)))
% 250.667

I4=vpa((b-a)*(d-c)/36*(f(a,c)+f(a,d)+f(b,c)+f(b,d)+...
    +4*(f(a,(c+d)/2)+f(b,(c+d)/2)+f((a+b)/2,c)+f((a+b)/2,d))+...
    +16*f((a+b)/2,(c+d)/2)))
% 250.667

