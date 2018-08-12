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
% 2)
f(x)=piecewise(-pi<x<0,-pi-2*x,x==0,0,0<x<pi,pi-2*x)
fplot(f(x),[-pi1 pi1]);

a0=int(f(x),x,-pi,pi)/pi
% 0

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% 0
af(m)=a(m)*cos(m*x)
% 0

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
b(m)=simplify(b(m))
% (2*pi*m - 4*sin(pi*m) + 2*m*pi*cos(pi*m))/(m^2*pi)
%             =0                 =(-1)^m
b(m)=(2*pi*m + 2*m*pi*(-1)^m)/(m^2*pi)
b(m)=simplify(b(m))
% (2*(-1)^m + 2)/m
bf(m)=b(m)*sin(m*x)
% (sin(m*x)*(2*(-1)^m + 2))/m

abf(m)=af(m)+bf(m)
% (sin(m*x)*(2*(-1)^m + 2))/m

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for m=1:7
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
% [ 1, 0,   0,              0]
% [ 2, 0,   2,     2*sin(2*x)]
% [ 3, 0,   0,              0]
% [ 4, 0,   1,       sin(4*x)]
% [ 5, 0,   0,              0]
% [ 6, 0, 2/3, (2*sin(6*x))/3]
% [ 7, 0,   0,              0]