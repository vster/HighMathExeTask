% Construct an odd extension of the function f(x) = cos(x) 
% given in the interval [0, pi].

clear
pi1=pi
syms x d real;
syms pi;
f(x)=cos(x)
digits(4)

%a0=(2/pi)*int(f(x),x,0,pi)
a0=0 
syms n integer;
assume(n>=1)
% a(n)=(2/pi)*int(f*cos(n*x),x,0,pi)
%
a(n)=sym(0)
af(n)=a(n)*cos(n*x)
% 0

b(n)=(2/pi)*int(f*sin(n*x),x,0,pi)
% piecewise(n == 1, 0, n ~= 1, (2*n*(cos(pi*n) + 1))/(pi*(n^2 - 1)))
%                                    =(-1)^n
b(n)=piecewise(n == 1, 0, n ~= 1, (2*n*((-1)^n + 1))/(pi*(n^2 - 1)))
bf(n)=b(n)*sin(n*x)
% piecewise(n == 1, 0, n ~= 1, (2*n*sin(n*x)*((-1)^n + 1))/(pi*(n^2 - 1)))
abf(n)=af(n)+bf(n)
% piecewise(n == 1, 0, n ~= 1, (2*n*sin(n*x)*((-1)^n + 1))/(pi*(n^2 - 1)))

fplot(f(x),[0,pi1])
hold on
grid on

f1=a0/2;
for n=1:10
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    % if (n==3 || n==10)
    fplot(f1,[0 pi1]);
    % end
    grid on
end
hold off

ft=[n1;a1;b1;abf1];
a0/2
% 0
ft'
% [  1, 0,          0,                      0]
% [  2, 0,   8/(3*pi),    (8*sin(2*x))/(3*pi)]
% [  3, 0,          0,                      0]
% [  4, 0, 16/(15*pi),  (16*sin(4*x))/(15*pi)]
% [  5, 0,          0,                      0]
% [  6, 0, 24/(35*pi),  (24*sin(6*x))/(35*pi)]