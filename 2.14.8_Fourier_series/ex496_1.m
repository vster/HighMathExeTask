% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=x^2; T=2*pi; [0;pi]
% Continue f(x) on a stretch [-pi;0] in an odd manner

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,-x^2,0<=x<=pi,x^2)

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseries(f)

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
% [ 1, 0,        (2*pi^2 - 8)/pi,          (sin(x)*(2*pi^2 - 8))/pi]
% [ 2, 0,                    -pi,                      -pi*sin(2*x)]
% [ 3, 0,  (18*pi^2 - 8)/(27*pi),  (sin(3*x)*(18*pi^2 - 8))/(27*pi)]
% [ 4, 0,                  -pi/2,                  -(pi*sin(4*x))/2]
% [ 5, 0, (50*pi^2 - 8)/(125*pi), (sin(5*x)*(50*pi^2 - 8))/(125*pi)]