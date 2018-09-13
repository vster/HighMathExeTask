% Find the Fourier series of the function f(x) = x^3 if it is known that
% x^2=pi^2/3+4*sum(n=1:inf)(-1)^n/n^2*cos(n*x)
% for -pi<=x<=pi.

% 1)
syms x n;
abf(x,n)=4*(-1)^n/n^2*cos(n*x)
syms t pi
I1=int(t^2,t,-pi,x)
% x^3/3 + pi^3/3

I2=int(pi^2/3,t,-pi,x)
% (pi^2*(x + pi))/3
I3=int(4*(-1)^n/n^2*cos(n*t),t,-pi,x)
% (4*(-1)^n*(sin(pi*n) + sin(n*x)))/n^3
%            =0
% (4*(-1)^n*sin(n*x))/n^3

% x^3/3+pi^3/3=(pi^2*(x + pi))/3 + sum(n=1:inf)(4*(-1)^n*sin(n*x))/n^3
% x^3=pi^2*x+12*sum(n=1:inf)(-1)^n*sin(n*x)/n^3
% x=(2*(-1)^(n + 1)*sin(n*x))/n
% x^3=pi^2*sum(n=1:inf)(2*(-1)^(n + 1)*x^2*sin(n*x))/n+12*sum(n=1:inf)(-1)^n*sin(n*x)/n^3
% x^3=sum(n=1:inf)12*(-1)^n*sin(n*x)/n^3-sum(n=1:inf)(2*(-1)^n*pi^2*x^2*sin(n*x))/n
% x^3=sum(n=1:inf)(-1)^n*(12/n^3-2*pi^2/n)*sin(n*x)

% 2)
clear
pi1=pi;
syms x real;
syms pi;
f(x)=x^3

a0=int(f(x),x,-pi,pi)/pi
% 0

syms n integer;
assume(n>=1)
a(n)=int(f(x)*cos(n*x),x,-pi,pi)/pi
% 0
af(n)=a(n)*cos(n*x)
% 0

b(n)=int(f(x)*sin(n*x),x,-pi,pi)/pi
% -(2*sin(pi*n)*(6/n^4 - (3*pi^2)/n^2) - 2*cos(pi*n)*((6*pi)/n^3 - pi^3/n))/pi
%     =0                                   =(-1)^n
pretty(b(n))
b(n)=(-1)^n*(12/n^3 - 2*pi^2/n)
bf(n)=b(n)*sin(n*x)
%

abf(n)=af(n)+bf(n)
% (-1)^n*sin(n*x)*(12/n^3 - (2*pi^2)/n)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for n=1:5
    n1(n)=n;
    a1(n)=a(n);
    b1(n)=b(n);
    abf1(n)=abf(n);
    f1=f1+abf(n);
    fplot(f1,[-pi1 pi1])
    grid on
end
hold off

a0/2
% 0
ft=[n1;a1;b1;abf1];
ft'
% [ 1, 0,         2*pi^2 - 12,           sin(x)*(2*pi^2 - 12)]
% [ 2, 0,          3/2 - pi^2,         -sin(2*x)*(pi^2 - 3/2)]
% [ 3, 0,    (2*pi^2)/3 - 4/9,    sin(3*x)*((2*pi^2)/3 - 4/9)]
% [ 4, 0,       3/16 - pi^2/2,      -sin(4*x)*(pi^2/2 - 3/16)]
% [ 5, 0, (2*pi^2)/5 - 12/125, sin(5*x)*((2*pi^2)/5 - 12/125)]