% Find the Fourier series of the function f(x) = x^2, knowing that
% x=2*sum(n=1:inf)(-1)^(n+1)/n*sin(n*x) for -pi<=x<=pi

syms x n;
abf(x,n)=2*(-1)^(n+1)/n*sin(n*x)
syms t
I1=int(t,t,-pi,x)
% x^2/2 - pi^2/2

I2=int(2*(-1)^(n+1)/n*sin(n*t),t,-pi,x)
% (2*(-1)^(n + 1)*(cos(pi*n) - cos(n*x)))/n^2
% (2*(-1)^(n + 1)*((-1)^n - cos(n*x)))/n^2
% (2*(-1)^n)*(cos(n*x) - (-1)^n))/n^2
% 2*(-1)^n)*cos(n*x)/n^2 - 2/n^2

% I1=sum(n=1:inf)I2
% x^2/2 - pi^2/2 = 2*sum(n=1:inf)(-1)^n)*cos(n*x)/n^2-2*sum(n=1:inf)1/n^2
% dzeta(2)=sum(n=1:inf)1/n^2=pi^2/6
% x^2-pi^2=4*sum(n=1:inf)(-1)^n)*cos(n*x)/n^2-2*pi^2/3
% x^2=pi^2/3+4*sum(n=1:inf)(-1)^n)*cos(n*x)/n^2


