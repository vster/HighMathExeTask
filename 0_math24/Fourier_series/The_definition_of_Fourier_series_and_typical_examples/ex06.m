% Find the Fourier series for a triangular wave
% f (x) = 0 at -pi<=x<=0
%         sin(x)  at 0<x<=pi    
% defined in the interval [-pi, pi].

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,0,0<x<=pi,sin(x))

a0=int(f(x),x,-pi,pi)/pi
% 2/pi

syms n integer;
assume(n>=1)
a(n)=int(f(x)*cos(n*x),x,-pi,pi)/pi
% piecewise(n ~= 1, -(2*cos((pi*n)/2)^2)/(pi*(n^2 - 1)), n in Dom::ImageSet(2*k + 1, k, Z_), 0)
pretty(a(n))
a(n)=piecewise(n~=1,((-1)^(n-1)-1)/(pi*(n^2 - 1)),n == 1,0)
af(n)=a(n)*cos(n*x)
% piecewise(n ~= 1, (cos(n*x)*((-1)^(n - 1) - 1))/(pi*(n^2 - 1)), n == 1, 0)

b(n)=int(f(x)*sin(n*x),x,-pi,pi)/pi
% piecewise(n == 1, 1/2, n ~= 1, -sin(pi*n)/(pi*(n^2 - 1)), in(n, 'integer'), 0^(n - 1)/2, (n in Dom::ImageSet(2*k, k, Z_) | 2 <= n) & in(n, 'integer'), 0)
pretty(b(n))
b(n)=piecewise(n==1,1/2,n~=1,0)
bf(n)=b(n)*sin(n*x)
% piecewise(n == 1, sin(x)/2, n ~= 1, 0)

abf(n)=af(n)+bf(n)
% piecewise(n ~= 1, (cos(n*x)*((-1)^(n - 1) - 1))/(pi*(n^2 - 1)), n == 1, sin(x)/2)

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
% 1/pi
ft=[n1;a1;b1;abf1];
ft'
% [ 1,          0, 1/2,              sin(x)/2]
% [ 2,  -2/(3*pi),   0,  -(2*cos(2*x))/(3*pi)]
% [ 3,          0,   0,                     0]
% [ 4, -2/(15*pi),   0, -(2*cos(4*x))/(15*pi)]
% [ 5,          0,   0,                     0]
