% Euler method
% y'=1+x+y^2
% y(0)=1
clear
digits(3)
syms x y
f(x,y)=1+x+y^2
X(1)=0;
h=0.1;
X=X(1):h:X(1)+4*h
%          0    0.1000    0.2000    0.3000    0.4000
Y(1)=1;
for i=1:4
    Y(i+1)=Y(i)+h*f(X(i),Y(i));
end
Y
%     1.0000    1.2000    1.4500    1.7800    2.2300