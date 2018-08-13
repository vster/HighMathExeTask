% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=-2*x on [-pi;0]
%       3*x  on [0;pi]
% T=2*pi;

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,-2*x,0<=x<=pi,3*x)

a0=int(f(x),x,-pi,pi)/pi
% (5*pi)/2

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% -(5*(2*sin((pi*m)/2)^2 - m*pi*sin(pi*m)))/(m^2*pi)
%      =(1-(-1)^m)              =0
a(m)=-(5*(1-(-1)^m))/(m^2*pi)
% (5*(-1)^m - 5)/(m^2*pi)
af(m)=a(m)*cos(m*x)
% (cos(m*x)*(5*(-1)^m - 5))/(m^2*pi)

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% (sin(pi*m) - m*pi*cos(pi*m))/(m^2*pi)
%  =0               =(-1)^m
b(m)=(m*pi*(-1)^(m+1))/(m^2*pi)
% (-1)^(m + 1)/m
bf(m)=b(m)*sin(m*x)
% ((-1)^(m + 1)*sin(m*x))/m

abf(m)=af(m)+bf(m)
% ((-1)^(m + 1)*sin(m*x))/m + (cos(m*x)*(5*(-1)^m - 5))/(m^2*pi)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-pi1 pi1])
    grid on
end
hold off

a0/2
% (5*pi)/4
ft=[m1;a1;b1;abf1];
ft'
% [ 1,     -10/pi,    1,           sin(x) - (10*cos(x))/pi]
% [ 2,          0, -1/2,                       -sin(2*x)/2]
% [ 3, -10/(9*pi),  1/3, sin(3*x)/3 - (10*cos(3*x))/(9*pi)]
% [ 4,          0, -1/4,                       -sin(4*x)/4]
% [ 5,  -2/(5*pi),  1/5,  sin(5*x)/5 - (2*cos(5*x))/(5*pi)]
