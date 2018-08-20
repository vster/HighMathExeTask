% Find the Fourier expansion of a rectangular function with period 
% 2*pi defined in the interval [-pi, pi]
% f(x)= 0 on [-pi,0]
%       1 on [0,pi]

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,0,0<=x<=pi,1)

a0=int(f(x),x,-pi,pi)/pi
% 1

syms n integer;
assume(n>=1)
a(n)=int(f(x)*cos(n*x),x,-pi,pi)/pi
% sin(pi*n)/(n*pi)
% =0
a(n)=sym(0)
af(n)=a(n)*cos(n*x)
% 0

b(n)=int(f(x)*sin(n*x),x,-pi,pi)/pi;
% (2*sin((pi*n)/2)^2)/(n*pi)
%  =(1-(-1)^n)
b(n)=(1-(-1)^n)/(n*pi)
% -((-1)^n - 1)/(n*pi)
bf(n)=b(n)*sin(n*x)
% -(sin(n*x)*((-1)^n - 1))/(n*pi)

abf(n)=af(n)+bf(n)
% -(sin(n*x)*((-1)^n - 1))/(n*pi)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for n=1:8
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
% 1/2
ft=[n1;a1;b1;abf1];
ft'
% [ 1, 0,     2/pi,       (2*sin(x))/pi]
% [ 2, 0,        0,                   0]
% [ 3, 0, 2/(3*pi), (2*sin(3*x))/(3*pi)]
% [ 4, 0,        0,                   0]
% [ 5, 0, 2/(5*pi), (2*sin(5*x))/(5*pi)]

syms n k;
abf1(n)=abf(n)
abf2(k)=subs(abf1(n),n,2*k-1)
% -(sin(x*(2*k - 1))*((-1)^(2*k - 1) - 1))/(pi*(2*k - 1))
%                      =-2
abf2(k)=2*sin(x*(2*k - 1))/(pi*(2*k - 1))

for k=1:3
    k1(k)=k
    abf3(k)=abf2(k)
end
ft2=[k1;abf3];
ft2'
% [ 1,       (2*sin(x))/pi]
% [ 2, (2*sin(3*x))/(3*pi)]
% [ 3, (2*sin(5*x))/(5*pi)]