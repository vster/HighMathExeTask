% Find the Fourier expansion of a trapezoidal wave given by the function
% f(x) = x, 0<=x<=1
%        1, 1<x<2
%        3-x, 2<x<=3

clear
syms x L real;
syms pi;
% assume(L>0);
L=3/2;
f(x)=piecewise(0<=x<=1,x,1<x<2,1,2<x<=3,3-x)
digits(4)

a0=(1/L)*int(f(x),x,0,2*L)
% 4/3
syms n integer;
assume(n>=1)
a(n)=(1/L)*int(f*cos(n*pi*x/L),x,0,2*L)
% - (6*sin((pi*n)/3)^2 - 2*n*pi*sin((2*pi*n)/3))/(2*n^2*pi^2) - (3*cos(2*pi*n) - 3*cos((4*pi*n)/3) + 2*n*pi*sin((4*pi*n)/3))/(2*n^2*pi^2) - (sin((2*pi*n)/3) - sin((4*pi*n)/3))/(n*pi)
a(n)=simplify(a(n))
% (12*sin((pi*n)/3)^2*(4*sin((pi*n)/3)^4 - 5*sin((pi*n)/3)^2 + 1))/(n^2*pi^2)
af(n)=a(n)*cos(n*pi*x/L)
% (12*sin((pi*n)/3)^2*cos((2*pi*n*x)/3)*(4*sin((pi*n)/3)^4 - 5*sin((pi*n)/3)^2 + 1))/(n^2*pi^2)

b(n)=(1/L)*int(f*sin(n*pi*x/L),x,0,2*L)
b(n)=simplify(b(n))
% f(x)-even => b(n)=0
b(n)=0
bf(n)=b(n)*sin(n*pi*x/L)
%
abf(n)=af(n)+bf(n)
% (12*sin((pi*n)/3)^2*cos((2*pi*n*x)/3)*(4*sin((pi*n)/3)^4 - 5*sin((pi*n)/3)^2 + 1))/(n^2*pi^2)

fplot(f,[0,2*L])
hold on
grid on

f1=a0/2
for n=1:5
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    fplot(f1,[0 2*L]);
    hold on
    grid on
end
ft=[n1;a1;b1;abf1];
a0/2
% 2/3
ft'
% [ 1,  -9/(2*pi^2), 0,   -(9*cos((2*pi*x)/3))/(2*pi^2)]
% [ 2,  -9/(8*pi^2), 0,   -(9*cos((4*pi*x)/3))/(8*pi^2)]
% [ 3,            0, 0,                               0]
% [ 4, -9/(32*pi^2), 0,  -(9*cos((8*pi*x)/3))/(32*pi^2)]
% [ 5, -9/(50*pi^2), 0, -(9*cos((10*pi*x)/3))/(50*pi^2)]