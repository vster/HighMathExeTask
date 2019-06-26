clear
digits(4)
syms x
y(x)=4^x
X=[-1 -0.5 0 0.5 1]
Y=[0.25 0.5 1 2 4]

for k=1:4
    L(k)=(x-X(k))/(X(k+1)-X(k))*(Y(k+1)-Y(k))+Y(k)
end

S(x)=piecewise(X(1)<=x<X(2),L(1),...
               X(2)<=x<X(3),L(2),...
               X(3)<=x<X(4),L(3),...
               X(4)<=x<=X(5),L(4))

x1=0.125
y1=vpa(y(x1))
y2=vpa(S(x1))
           
fplot(y,[-1 1])
hold on
fplot(S,[-1 1])
hold off
grid on