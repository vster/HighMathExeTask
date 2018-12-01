% Expand the Fourier series of a periodic function f(x) with period 2, 
% given in the interval (-1;1) by the equation f(x)=x^2.

clear;
syms x pi;
f(x)=x^2;
L=1;

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseriesL(f,L)

fplot(f(x),[-1 1]);
hold on;

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-1 1]);
    grid on
end
hold off

a0/2
% 1/3
ft=[m1;a1;b1;abf1];
ft'
% [ 1,      -4/pi^2, 0,        -(4*cos(pi*x))/pi^2]
% [ 2,       1/pi^2, 0,           cos(2*pi*x)/pi^2]
% [ 3,  -4/(9*pi^2), 0,  -(4*cos(3*pi*x))/(9*pi^2)]
% [ 4,   1/(4*pi^2), 0,       cos(4*pi*x)/(4*pi^2)]
% [ 5, -4/(25*pi^2), 0, -(4*cos(5*pi*x))/(25*pi^2)] 

x=0:20;
y(1)=a0/2;
for m=1:20
    y(m+1)=a(m)+1i*b(m);
end
yd=20*log10(abs(y)/abs(y(2)));

plot(x,yd)
grid on;

function [a0,a,b,abf]=fourierseriesL(f,L)
syms x real
syms m integer

a0=(1/L)*int(f(x),x,-L,L);
a(m)=(1/L)*int(f*cos(m*pi*x/L),x,-L,L);
a(m)=simplify(subs(a(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
af(m)=a(m)*cos(m*pi*x/L);

b(m)=(1/L)*int(f*sin(m*pi*x/L),x,-L,L);
b(m)=simplify(subs(b(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
bf(m)=b(m)*sin(m*pi*x/L);
abf(m)=af(m)+bf(m);
end