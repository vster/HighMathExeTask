% Expand in the Fourier series a periodic function given 
% on the half-period [0;2] by the equation f(x)=x-1/2*x^2.

clear
syms x real;
syms pi;
% 2) odd function
f=x-1/2*x^2
% f=x-1/2*x^2
L=2
digits(4)

a0=sym(0)
% 0
syms m integer;
assume(m>=1)
a(m)=sym(0)
% 0
af(m)=a(m)*cos(m*pi*x/L)
% 0

b(m)=(2/L)*int(f*sin(m*pi*x/L),x,0,2)
% (16*sin((pi*m)/2)^2)/(m^3*pi^3) - (4*sin(pi*m))/(m^2*pi^2)
b(m)=simplify(b(m))
% (4*(4*sin((pi*m)/2)^2 - m*pi*sin(pi*m)))/(m^3*pi^3)
%     =2*(1-(-1)^m)            =0 
b(m)=8*(1-(-1)^m)/(m^3*pi^3)
% -(8*(-1)^m - 8)/(m^3*pi^3)
bf(m)=b(m)*sin(m*pi*x/L)
% -(sin((pi*m*x)/2)*(8*(-1)^m - 8))/(m^3*pi^3)
abf(m)=af(m)+bf(m)
% -(sin((pi*m*x)/2)*(8*(-1)^m - 8))/(m^3*pi^3)
fplot(f,[0 2])
hold on

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[0 2]);
    grid on
end
hold off

disp(f1);
% (16*sin((pi*x)/2))/pi^3 + (16*sin((3*pi*x)/2))/(27*pi^3) + (16*sin((5*pi*x)/2))/(125*pi^3)

a0/2
% 0
ft=[m1;a1;b1;abf1];
ft'
% [ 1, 0,       16/pi^3,         (16*sin((pi*x)/2))/pi^3]
% [ 2, 0,             0,                               0]
% [ 3, 0,  16/(27*pi^3),  (16*sin((3*pi*x)/2))/(27*pi^3)]
% [ 4, 0,             0,                               0]
% [ 5, 0, 16/(125*pi^3), (16*sin((5*pi*x)/2))/(125*pi^3)]
