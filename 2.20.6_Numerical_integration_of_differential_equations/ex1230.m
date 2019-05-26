% Euler method
% y'=x^2+y^3
% y(0)=0
clear
digits(4)
syms x y
f(x,y)=x^2+y^3
h=0.1
X=0:0.1:0.4
%          0    0.1000    0.2000    0.3000    0.4000
Y(1)=0;
for i=1:4
    Y(i+1)=Y(i)+h*f(X(i),Y(i));
end
Y
%          0         0    0.0010    0.0050    0.0140