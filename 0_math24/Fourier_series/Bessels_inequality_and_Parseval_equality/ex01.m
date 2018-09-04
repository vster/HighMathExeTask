% Calculate the sum of the series sum(n=1:inf)1/n^2
% Note: Apply Parseval's formula to the function f(x) = x.

% Parseval's formula
% a0^2/2+sum(n=1:inf)(a(n)^2+b(n)^2)=1/pi*int(-pi:pi)f(x)^2*dx

pi1=pi
syms x n pi;
f(x)=x
b(n)=2/n*(-1)^(n+1)

S=symsum(b(n)^2,n,1,inf)
% (2*pi^2)/3
I=1/pi*int(f(x)^2,x,-pi,pi)
% (2*pi^2)/3

% sum(n=1:inf)(2/n*(-1)^(n+1)))^2=1/pi*int(-pi:pi)x^2*dx =>
% 4*sum(n=1:inf)1/n^2=(2*pi^2)/3 =>
% sum(n=1:inf)1/n^2=pi^2/6
% dzeta(2)=sum(n=1:inf)1/n^2=pi^2/6 is the Riemann zeta function

