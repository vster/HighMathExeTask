% Expand in the Fourier series a periodic function given 
% on the half-period [0;2] by the equation f(x)=x-1/2*x^2.

clear
syms x real;
syms pi;
f=x-1/2*x^2;
L=2;

% 1)
a0=int(x-1/2*x^2,x,0,2)
% 2/3
syms m integer;
assume(m>=1)
a(m)=(2/L)*int(f*cos(m*pi*x/L),x,0,2)
% (8*sin(pi*m))/(m^3*pi^3) - (4*cos(pi*m))/(m^2*pi^2) - 4/(m^2*pi^2)
%     =0                          (-1)^m
a(m)=-((-1)^m+1)*(4/(m^2*pi^2))
af(m)=a(m)*cos(m*pi*x/L)
% -(4*cos((pi*m*x)/2)*((-1)^m + 1))/(m^2*pi^2)

b(m)=(2/L)*int(f*sin(m*pi*x/L),x,0,2);
% (16*sin((pi*m)/2)^2)/(m^3*pi^3) - (4*sin(pi*m))/(m^2*pi^2)
%        =0                               =0
b(m)=sym(0)
bf(m)=b(m)*sin(m*pi*x/L)
% 0
abf(m)=af(m)+bf(m)
% -(4*cos((pi*m*x)/2)*((-1)^m + 1))/(m^2*pi^2)
fplot(f,[0 L]);
hold on;
grid on;

f1=a0/2
for m=1:7
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[0 L]);
    grid on;
end
hold off

disp(f1)
% 1/3 - cos(2*pi*x)/(2*pi^2) - (2*cos(3*pi*x))/(9*pi^2) - (2*cos(pi*x))/pi^2

a0/2
% 1/3
ft=[m1;a1;b1;abf1];
ft'
% [ 1,           0, 0,                         0]
% [ 2,     -2/pi^2, 0,       -(2*cos(pi*x))/pi^2]
% [ 3,           0, 0,                         0]
% [ 4, -1/(2*pi^2), 0,     -cos(2*pi*x)/(2*pi^2)]
% [ 5,           0, 0,                         0]
% [ 6, -2/(9*pi^2), 0, -(2*cos(3*pi*x))/(9*pi^2)]
% [ 7,           0, 0,                         0]