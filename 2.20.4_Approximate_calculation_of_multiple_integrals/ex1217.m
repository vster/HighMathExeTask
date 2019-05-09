clear
digits(4)
syms x y
f(x,y)=x*y+3*sqrt(y)
x1=2
x3=4
y1=0.5*x^2
y3=2*x

I1=vpa(int(int(f,y,y1,y3),x,x1,x3))
% 53.181

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
I2=(X(3)-X(1))/36*((Y(1,3)-Y(1,1))*(Z(1,1)+4*Z(1,2)+Z(1,3))+...
    4*(Y(2,3)-Y(2,1))*(Z(2,1)+4*Z(2,2)+Z(2,3))+...
    (Y(3,3)-Y(3,1))*(Z(3,1)+4*Z(3,2)+Z(3,3)))
% 52.68
