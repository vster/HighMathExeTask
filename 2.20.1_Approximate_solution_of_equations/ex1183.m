% Calculate sqrt(3) with acc=0.0000001

clear
digits(10)

xx=vpa(sqrt(3))
% 1.732050808

syms x
f(x)=x^2-3
x0=1.7
df(x)=diff(f) % 2*x
d2f(x)=diff(f,x,2) % 2
d3f(x)=diff(f,x,3) % 0
d4f(x)=diff(f,x,4) % 0

% n=1
ksi1=vpa(x0-f(x0)/df(x0))
% 1.732352941
abs(xx-ksi1)

% n=2
ksi2=vpa(x0-f(x0)/df(x0))-f(x0)^2*d2f(x0)/(factorial(2)*df(x0)^3)
% 1.732045084
abs(xx-ksi2)

% n=3
ksi3=vpa(x0-f(x0)/df(x0)-f(x0)^2*d2f(x0)/(factorial(2)*df(x0)^3)-...
    f(x0)^3/factorial(3)*(3*d2f(x0)^2-df(x0)*d3f(x0))/df(x0)^3)
% 1.732112813
abs(xx-ksi3)