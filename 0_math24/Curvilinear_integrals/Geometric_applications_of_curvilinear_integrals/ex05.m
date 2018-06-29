% Calculate the length of the parabola 
% y = x^2 in the interval 0<=x<=1

syms x real;
y=x^2
digits(4)

f=sqrt(1+diff(y,x)^2)
% (4*x^2 + 1)^(1/2)
L=int(f,x,0,1)
% log(5^(1/2) + 2)/4 + 5^(1/2)/2
vpa(L)
% 1.479