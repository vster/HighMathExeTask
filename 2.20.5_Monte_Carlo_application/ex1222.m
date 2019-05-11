clear
digits(3)
syms x y
f(x,y)=x+2*y
a=0
b=1
y1=x/2
y2=x
I1=vpa(int(int(f,y,y1,y2),x,a,b))
% 0.417

N=1000;
X=rand(1,N);
Y=rand(1,N);
Y1=X/2;
Y2=X;
n=0;
S=0;
for i=1:N
    if (Y(i)>Y1(i)) && (Y(i)<Y2(i))
        n=n+1;
        F=X(i)+2*Y(i);
        S=S+F;
    end
end
I2=vpa(S/N)
% 0.411
delta=abs(I2-I1)/I1*100
