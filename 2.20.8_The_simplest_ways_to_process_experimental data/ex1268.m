clear
digits(4)
syms x
y(x)=tan(x)
X=[-pi/4 -pi/8 0 pi/8 pi/4]
Y=[-1 -0.4146 0 0.4146 1]

for k=1:4
    L(k)=vpa((x-X(k))/(X(k+1)-X(k))*(Y(k+1)-Y(k))+Y(k))
end

S(x)=piecewise(X(1)<=x<X(2),L(1),...
               X(2)<=x<X(3),L(2),...
               X(3)<=x<X(4),L(3),...
               X(4)<=x<=X(5),L(4))
           
fplot(y,[-pi/4 pi/4])
hold on
fplot(S,[-pi/4 pi/4])
hold off
grid on