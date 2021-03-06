% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=cos(2*x); T=2*pi; [0;pi]
% Expand in a seris by sines.

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<0,-cos(2*x),0<x<=pi,cos(2*x))

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseries(f)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for m=1:5
    if m==2
        m1(m)=m;
        continue;
    end
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
% [ 1, 0,  -4/(3*pi),    -(4*sin(x))/(3*pi)]
% [ 2, 0,          0,                     0]
% [ 3, 0,  12/(5*pi),  (12*sin(3*x))/(5*pi)]
% [ 4, 0,          0,                     0]
% [ 5, 0, 20/(21*pi), (20*sin(5*x))/(21*pi)]