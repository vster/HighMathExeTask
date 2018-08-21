% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=x^3; T=2*pi; [-pi;pi]

clear
pi1=pi;
syms x real;
syms pi;
f(x)=x^3;

a0=int(f(x),x,-pi,pi)/pi
% 0

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% 0
af(m)=a(m)*cos(m*x)
% 0

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% -(2*sin(pi*m)*(6/m^4 - (3*pi^2)/m^2) - 2*cos(pi*m)*((6*pi)/m^3 - pi^3/m))/pi
%     =0                                     (-1)^m
b(m)=2*(-1)^m*((6*pi)/m^3 - pi^3/m)/pi
b(m)=simplify(b(m))
% (2*(-1)^m*((6*pi)/m^3 - pi^3/m))/pi
bf(m)=b(m)*sin(m*x)
% ((-1)^(m + 1)*sin(m*x)*(2*pi^2*m^2 - 12))/m^3

abf(m)=af(m)+bf(m)
% ((-1)^(m + 1)*sin(m*x)*(2*pi^2*m^2 - 12))/m^3

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
% [ 1, 0,         2*pi^2 - 12,          sin(x)*(2*pi^2 - 12)]
% [ 2, 0,          3/2 - pi^2,   -(sin(2*x)*(8*pi^2 - 12))/8]
% [ 3, 0,    (2*pi^2)/3 - 4/9,  (sin(3*x)*(18*pi^2 - 12))/27]
% [ 4, 0,       3/16 - pi^2/2, -(sin(4*x)*(32*pi^2 - 12))/64]
% [ 5, 0, (2*pi^2)/5 - 12/125, (sin(5*x)*(50*pi^2 - 12))/125]

x=0:20;
y(1)=a0/2;
for m=1:20
    y(m+1)=a(m)+1i*b(m);
end
yd=20*log10(abs(y)/abs(y(2)));

plot(x,yd)
grid on;