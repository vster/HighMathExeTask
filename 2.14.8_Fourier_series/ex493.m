% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=x-2*pi; T=2*pi; [0;pi]
% Continue f(x) on a segment [-pi;0]
% 1) in an even way 
% 2) in an odd manner

clear
pi1=pi;
syms x real;
syms pi;
% 1)
f(x)=piecewise(-pi<x<=0,pi+2*x,0<=x<pi,pi-2*x)
fplot(f(x),[-pi1 pi1]);

a0=int(f(x),x,-pi,pi)/pi
% 0

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% ((8*sin((pi*m)/2)^2)/m^2 - (2*pi*sin(pi*m))/m)/pi
%   =4*(1-(-1)^m)                  =0
a(m)=4*(1-(-1)^m)/(m^2*pi)
% -(4*(-1)^m - 4)/(m^2*pi)
af(m)=a(m)*cos(m*x)
% -(cos(m*x)*(4*(-1)^m - 4))/(m^2*pi)

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
b(m)=simplify(b(m))
% 0
bf(m)=b(m)*sin(m*x)
% 0

abf(m)=af(m)+bf(m)
% -(cos(m*x)*(4*(-1)^m - 4))/(m^2*pi)

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
% 0
ft=[m1;a1;b1;abf1];
ft'
% [ 1,      8/pi, 0,        (8*cos(x))/pi]
% [ 2,         0, 0,                    0]
% [ 3,  8/(9*pi), 0,  (8*cos(3*x))/(9*pi)]
% [ 4,         0, 0,                    0]
% [ 5, 8/(25*pi), 0, (8*cos(5*x))/(25*pi)]