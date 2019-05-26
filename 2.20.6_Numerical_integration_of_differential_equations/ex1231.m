% Euler method
% y'=y^2+y/x
% y(2)=4
clear
digits(5)
syms x y
f(x,y)=y^2+y/x
X(1)=2;
h=0.1;
X=X(1):h:X(1)+4*h
%     2.0000    2.1000    2.2000    2.3000    2.4000
Y(1)=4;
for i=1:4
    Y(i+1)=Y(i)+h*f(X(i),Y(i));
end
Y
%     4.0000    5.8000    9.4402   18.7810   54.8700