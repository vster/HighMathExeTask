% Apply Parseval's formula to the function f(x) = x^2.

syms x n;
f(x)=x^2

a0=(2*pi^2)/3
a(n)=2*2*n*pi*(-1)^n/(n^3*pi)
b(n)=0
abf(n)=(4*(-1)^n*cos(n*x))/n^2

S=a0^2/2+symsum(a(n)^2,n,1,inf)
% (2*pi^4)/5
I=1/pi*int(f(x)^2,x,-pi,pi)
% (2*pi^4)/5

% Parseval's formula
% a0^2/2+sum(n=1:inf)(a(n)^2+b(n)^2)=1/pi*int(-pi:pi)f(x)^2*dx
% ((2*pi^2)/3)^2+sum(n=1:inf)(2*2*n*pi*(-1)^n/(n^3*pi))^2=1/pi*int(-pi:pi)x^4*dx
% 2*pi^4/9+16*sum(n=1:inf)1/n^4=2*pi^4/5
% sum(n=1:inf)1/n^4=pi^4/90
% dzeta(4)=sum(n=1:inf)1/n^4=pi^4/90 is Riemann dzeta function