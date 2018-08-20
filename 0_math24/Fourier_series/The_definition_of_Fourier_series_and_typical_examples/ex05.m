% Find the Fourier series for a triangular wave
% f (x) = pi/2+x at -pi<=x<=0
%         pi/2-x  at 0<x<=pi    
% defined in the interval [-pi, pi].

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,pi/2+x,0<x<=pi,pi/2-x)

a0=int(f(x),x,-pi,pi)/pi
% 0

syms n integer;
assume(n>=1)
a(n)=int(f(x)*cos(n*x),x,-pi,pi)/pi
% ((4*sin((pi*n)/2)^2)/n^2 - (pi*sin(pi*n))/n)/pi
%   =2*(1-(-1)^n))               =0
pretty(a(n))
a(n)=2*(1-(-1)^n)/(n^2*pi)
af(n)=a(n)*cos(n*x)
% -(cos(n*x)*(2*(-1)^n - 2))/(n^2*pi)

b(n)=int(f(x)*sin(n*x),x,-pi,pi)/pi
% -((sin(pi*n) - n*(pi/2 + (pi*cos(pi*n))/2))/n^2 + (pi*n - 2*sin(pi*n) + n*pi*cos(pi*n))/(2*n^2))/pi
%    =0                        (-1)^n                         =0
pretty(b(n))
b(n)=-(-n*(pi/2+pi/2*(-1)^n)/n^2+(pi*n+n*pi*(-1)^n)/(2*n^2))/pi
b(n)=simplify(b(n))
% 0
bf(n)=b(n)*sin(n*x)
% 0

abf(n)=af(n)+bf(n)
% -(cos(n*x)*(2*(-1)^n - 2))/(n^2*pi)

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
% [ 1,      4/pi, 0,        (4*cos(x))/pi]
% [ 2,         0, 0,                    0]
% [ 3,  4/(9*pi), 0,  (4*cos(3*x))/(9*pi)]
% [ 4,         0, 0,                    0]
% [ 5, 4/(25*pi), 0, (4*cos(5*x))/(25*pi)]

syms n k;
abf(n)=-(cos(n*x)*(2*(-1)^n - 2))/(n^2*pi)
abf2(k)=subs(abf(n),n,2*k-1)
% -(cos(x*(2*k - 1))*(2*(-1)^(2*k - 1) - 2))/(pi*(2*k - 1)^2)
%                     =-4
abf2(k)=4*cos(x*(2*k - 1))/(pi*(2*k - 1)^2)

for k=1:3
    k1(k)=k
    abf3(k)=abf2(k)
end
ft2=[k1;abf3];
ft2'
% [ 1,        (4*cos(x))/pi]
% [ 2,  (4*cos(3*x))/(9*pi)]
% [ 3, (4*cos(5*x))/(25*pi)]