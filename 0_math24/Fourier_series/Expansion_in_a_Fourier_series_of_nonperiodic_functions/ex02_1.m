% Find the expansion in the Fourier series of the function
% f(x) = 0, -1<=x<=0
%        x, 0<x<=1

clear
syms x L real;
syms pi;
% assume(L>0);
L=1;
f(x)=piecewise(-1<=x<=0,0,0<x<=1,x)
digits(4)

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseriesL(f,L)

fplot(f,[-L,L])
hold on
grid on

f1=a0/2
for n=1:5
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    fplot(f1,[-L L]);
    hold on
    grid on
end
ft=[n1;a1;b1;abf1];
a0/2
% 1/4
ft'
% [ 1,      -2/pi^2,      1/pi,              sin(pi*x)/pi - (2*cos(pi*x))/pi^2]
% [ 2,            0, -1/(2*pi),                            -sin(2*pi*x)/(2*pi)]
% [ 3,  -2/(9*pi^2),  1/(3*pi),  sin(3*pi*x)/(3*pi) - (2*cos(3*pi*x))/(9*pi^2)]
% [ 4,            0, -1/(4*pi),                            -sin(4*pi*x)/(4*pi)]
% [ 5, -2/(25*pi^2),  1/(5*pi), sin(5*pi*x)/(5*pi) - (2*cos(5*pi*x))/(25*pi^2)]
