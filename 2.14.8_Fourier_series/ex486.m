% Expand the Fourier series of a periodic function f(x) with period 2, 
% given in the interval (-1;1) by the equation f(x)=x^2.

clear;
syms x pi;
f(x)=x^2;
L=1;

a0=(2/L)*int(f(x),x,0,1)
% 2/3

syms m integer;
assume(m>=1)
a(m)=(2/L)*int(f(x)*cos(m*pi*x/L),x,0,1)
% (2*(m^2*pi^2*sin(pi*m) - 2*sin(pi*m) + 2*m*pi*cos(pi*m)))/(m^3*pi^3)
%                =0             =0               =(-1)^m 
% a(m)=4*m*pi*(-1)^m/(m^3*pi^3)
a(m)=4*(-1)^m/(m^2*pi^2)
af(m)=a(m)*cos(m*pi*x/L)
% (4*(-1)^m*cos(pi*m*x))/(m^2*pi^2)

% f(x)-even => b(m)=0
b(m)=sym(0)
bf(m)=b(m)*sin(m*pi*x/L)
% 0
abf(m)=af(m)+bf(m)
% (4*(-1)^m*cos(m*x))/(m^2*pi^2)

fplot(f(x),[-1 1]);
hold on;

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-1 1]);
    grid on
end
hold off

a0/2
% 1/3
ft=[m1;a1;b1;abf1];
ft'
% [ 1,      -4/pi^2, 0,        -(4*cos(pi*x))/pi^2]
% [ 2,       1/pi^2, 0,           cos(2*pi*x)/pi^2]
% [ 3,  -4/(9*pi^2), 0,  -(4*cos(3*pi*x))/(9*pi^2)]
% [ 4,   1/(4*pi^2), 0,       cos(4*pi*x)/(4*pi^2)]
% [ 5, -4/(25*pi^2), 0, -(4*cos(5*pi*x))/(25*pi^2)] 

x=0:20;
y(1)=a0/2;
for m=1:20
    y(m+1)=a(m)+1i*b(m);
end
yd=20*log10(abs(y)/abs(y(2)));

plot(x,yd)
grid on;
