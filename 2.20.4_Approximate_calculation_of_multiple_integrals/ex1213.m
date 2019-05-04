clear
digits(4)
syms x y
f=(x+y)^2
% D:
x1=1
x2=3
y1=x^2
y2=x+x^2
I=vpa(int(int(f,y,y1,y2),x,x1,x2))
% 313.2

syms x
phi(x)=x^2
psi(x)=x+x^2
m=4
n=4
% i=1:5
% j=1:5
% y(i,j)=x(i)^2+x(i)/4*(j-1)=x(i)*(x(i)+1/4*(j-1))
X=1:(3-1)/4:3
Y=zeros(5,5);
for i=1:5
    for j=1:5
        Y(i,j)=X(i)*(X(i)+(j-1)/4);
    end
end
Y
% D_omega(i)=1/4*int(x,x,X(i),X(i+1))=1/8*(X(i+1)^2-X(i)^2)
for i=1:4
    D_omega(i)=1/8*(X(i+1)^2-X(i)^2); 
end
D_omega
% Z(i,j)=(X(i)+Y(i,j))^2
Z=zeros(5,5);
for i=1:5
    for j=1:5
        Z(i,j)=(X(i)+Y(i,j))^2;
    end
end
Z
S1=0;
for i=1:4
    S1=S1+sum(Z(i,1:4))*D_omega(i);
end
S1
% 201.3223
S2=0;
for i=1:4
    S2=S2+sum(Z(i+1,1:4))*D_omega(i);
end
S2
% 395.8340
S3=0;
for i=1:4
    S3=S3+sum(Z(i,2:5))*D_omega(i);
end
S3
% 230.1191
S4=0;
for i=1:4
    S4=S4+sum(Z(i+1,2:5))*D_omega(i);
end
S4
% 445.9746
I1=(S1+S2+S3+S4)/4
% 318.3125
delta=(I1-I)/I*100
% 1.6%