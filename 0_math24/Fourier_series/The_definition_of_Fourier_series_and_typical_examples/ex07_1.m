% Find the Fourier series for a triangular wave
% f (x) = -1 at -pi<=x<=-pi/2
%          0 at -pi/2<x<=pi/2
%          1 at pi/2<x<=pi
% defined in the interval [-pi, pi].

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=-pi/2,-1,-pi/2<x<pi/2,0,pi/2<x<=pi,1)

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseries(f)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for n=1:10
    n1(n)=n;
    a1(n)=a(n);
    b1(n)=b(n);
    abf1(n)=abf(n);
    f1=f1+abf(n);
    fplot(f1,[-pi1 pi1])
    grid on
end
hold off

a0/2
%
ft=[n1;a1;b1;abf1];
ft'
% [ 1, 0,     2/pi,       (2*sin(x))/pi]
% [ 2, 0,    -2/pi,    -(2*sin(2*x))/pi]
% [ 3, 0, 2/(3*pi), (2*sin(3*x))/(3*pi)]
% [ 4, 0,        0,                   0]
% [ 5, 0, 2/(5*pi), (2*sin(5*x))/(5*pi)]