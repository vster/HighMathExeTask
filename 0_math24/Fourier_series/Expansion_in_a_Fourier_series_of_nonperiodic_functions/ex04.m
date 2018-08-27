% Find the expansion in the Fourier series of the function
% f(x)=cos(x)^2

clear
syms x L real;
syms pi;
L=pi/2;
f(x)=cos(x)^2
digits(4)

a0=(2/L)*int(f(x),x,0,L)
% 1
syms n integer;
assume(n>=1)
a(n)=(2/L)*int(f*cos(n*pi*x/L),x,0,L)
% piecewise(n == 1, 1/2, n ~= 1, -sin(pi*n)/(n*pi*(n^2 - 1)), in(n, 'integer'), 0)
af(n)=a(n)*cos(n*pi*x/L)
% piecewise(n == 1, cos(2*x)/2, n ~= 1, -(sin(pi*n)*cos(2*n*x))/(n*pi*(n^2 - 1)), in(n, 'integer'), 0)

% b(n)=(2/L)*int(f*sin(n*pi*x/L),x,0,L)
b(n)=sym(0)
bf(n)=b(n)*sin(n*pi*x/L)
abf(n)=af(n)+bf(n)
% piecewise(n == 1, cos(2*x)/2, n ~= 1, -(sin(pi*n)*cos(2*n*x))/(n*pi*(n^2 - 1)), in(n, 'integer'), 0)

%fplot(f(x),[0,L])
%hold on
%grid on

f1=a0/2
for n=1:5
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    %fplot(f1,[0 L]);
    %hold on
    %grid on
end
ft=[n1;a1;b1;abf1];
f1
% cos(2*x)/2 + 1/2
a0/2
% 1/2
ft'
% [ 1, 1/2, 0, cos(2*x)/2]
% [ 2,   0, 0,          0]
% [ 3,   0, 0,          0]
% [ 4,   0, 0,          0]
% [ 5,   0, 0,          0]