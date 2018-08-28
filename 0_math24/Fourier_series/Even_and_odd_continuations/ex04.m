% Construct an odd extension of the function 
% f(x) = x*sin(x) given in the interval [0, pi].

clear
pi1=pi
syms x d real;
syms pi;
f(x)=x*sin(x)
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
% -(2*(4*n*cos((pi*n)/2)^2 - pi*sin(pi*n) + n^2*pi*sin(pi*n)))/(pi*(n^2 - 1)^2)
%                               =0                 =0
b(n)=piecewise(n == 1, pi/2, n ~= 1, -2*(4*n*cos((pi*n)/2)^2)/(pi*(n^2 - 1)^2))
bf(n)=b(n)*sin(n*x)
% piecewise(n == 1, (pi*sin(x))/2, n ~= 1, -(8*n*cos((pi*n)/2)^2*sin(n*x))/(pi*(n^2 - 1)^2))
abf(n)=af(n)+bf(n)
% piecewise(n == 1, (pi*sin(x))/2, n ~= 1, -(8*n*cos((pi*n)/2)^2*sin(n*x))/(pi*(n^2 - 1)^2))

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
% [  1, 0,          pi/2,             (pi*sin(x))/2]
% [  2, 0,    -16/(9*pi),     -(16*sin(2*x))/(9*pi)]
% [  3, 0,             0,                         0]
% [  4, 0,  -32/(225*pi),   -(32*sin(4*x))/(225*pi)]
% [  5, 0,             0,                         0]
% [  6, 0, -48/(1225*pi),  -(48*sin(6*x))/(1225*pi)]
