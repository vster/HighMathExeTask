% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=x on [0;1]
%      2-x on [1;2]
% T=4;

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-2<=x<=-1,2+x,-1<=x<=0,-x,0<=x<=1,x,1<=x<=2,2-x)
L=2;

a0=1/L*int(f(x),x,-2,2)
% 1

syms m integer;
assume(m>=1)
a(m)=(1/L)*int(f(x)*cos(m*pi*x/L),x,-2,2)
% - (2*(4*sin((pi*m)/4)^2 - m*pi*sin((pi*m)/2)))/(m^2*pi^2) - (8*sin((pi*m)/4)^2 - 8*sin((pi*m)/2)^2 + 2*m*pi*sin((pi*m)/2))/(m^2*pi^2)
a(m)=simplify(a(m))
% -(8*cos((pi*m)/2)*(cos((pi*m)/2) - 1))/(m^2*pi^2)
af(m)=a(m)*cos(m*pi*x/L)
% -(8*cos((pi*m)/2)*cos((pi*m*x)/2)*(cos((pi*m)/2) - 1))/(m^2*pi^2)

b(m)=(1/L)*int(f(x)*sin(m*pi*x/L),x,-2,2)
% 0
bf(m)=b(m)*sin(m*pi*x/L)
% 0

abf(m)=af(m)+bf(m)
% -(8*cos((pi*m)/2)*cos((pi*m*x)/2)*(cos((pi*m)/2) - 1))/(m^2*pi^2)

fplot(f(x),[-2 2]);
grid on
hold on

f1=a0/2;
for m=1:10
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-2 2])
    grid on
end
hold off

a0/2
% 1/2
ft=[m1;a1;b1;abf1];
ft'
% [  1,            0, 0,                          0]
% [  2,      -4/pi^2, 0,        -(4*cos(pi*x))/pi^2]
% [  3,            0, 0,                          0]
% [  4,            0, 0,                          0]
% [  5,            0, 0,                          0]
% [  6,  -4/(9*pi^2), 0,  -(4*cos(3*pi*x))/(9*pi^2)]
% [  7,            0, 0,                          0]
% [  8,            0, 0,                          0]
% [  9,            0, 0,                          0]
% [ 10, -4/(25*pi^2), 0, -(4*cos(5*pi*x))/(25*pi^2)]