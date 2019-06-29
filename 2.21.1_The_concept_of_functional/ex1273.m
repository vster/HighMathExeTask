clear
syms x
a=0
b=1

y1(x)=x
J1=int(y1^2,x,a,b)
% 1/3

y2(x)=exp(x)
J2=int(y2^2,x,a,b)
% exp(2)/2 - 1/2

y3(x)=sqrt(1+x^2)
J3=int(y3^2,x,a,b)
% 4/3
