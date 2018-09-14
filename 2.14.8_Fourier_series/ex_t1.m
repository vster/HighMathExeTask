% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=dirac(x)

clear
pi1=pi;
syms x real;
syms pi;
f(x)=dirac(x)

a0=int(f(x),x,-pi,pi)/pi
% 1/pi

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% 1/pi
af(m)=a(m)*cos(m*x)
% cos(m*x)/pi

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% 0
bf(m)=b(m)*sin(m*x)
% 0

abf(m)=af(m)+bf(m)
% cos(m*x)/pi

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for m=1:20
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    if m==5 || m==20
        fplot(f1,[-pi1 pi1])
    end
    grid on
end
hold off

a0/2
% 1/(2*pi)
ft=[m1;a1;b1;abf1];
ft'
% [ 1, 1/pi, 0,   cos(x)/pi]
% [ 2, 1/pi, 0, cos(2*x)/pi]
% [ 3, 1/pi, 0, cos(3*x)/pi]
% [ 4, 1/pi, 0, cos(4*x)/pi]
% [ 5, 1/pi, 0, cos(5*x)/pi]