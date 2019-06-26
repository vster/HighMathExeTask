clear
digits(5)
syms x
y(x)=cosh(x)
X=-1:0.5:1
Y=vpa(y(X))

for k=1:4
    L(k)=vpa((x-X(k))/(X(k+1)-X(k))*(Y(k+1)-Y(k))+Y(k))
end

S(x)=piecewise(X(1)<=x<X(2),L(1),...
               X(2)<=x<X(3),L(2),...
               X(3)<=x<X(4),L(3),...
               X(4)<=x<=X(5),L(4))
           
fplot(y,[-1 1])
hold on
fplot(S,[-1 1])
hold off
grid on