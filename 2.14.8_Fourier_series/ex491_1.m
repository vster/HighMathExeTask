% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=exp(x); T=2*pi; [-pi;pi]

clear
syms x real;
syms pi;
f(x)=exp(x);
syms m integer;
assume(m>=1)
[a0,a(m),b(m),abf(m)]=fourierterm(f)

fplot(f(x),[-3 3]);
hold on
f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-3 3])
    grid on
end
hold off

a0/2
% sinh(pi)/pi
ft=[m1;a1;b1;abf1];
ft'
%[ 1,         -sinh(pi)/pi,           sinh(pi)/pi,                   (sinh(pi)*sin(x))/pi - (sinh(pi)*cos(x))/pi]
%[ 2,  (2*sinh(pi))/(5*pi),  -(4*sinh(pi))/(5*pi),   (2*cos(2*x)*sinh(pi))/(5*pi) - (4*sin(2*x)*sinh(pi))/(5*pi)]
%[ 3,     -sinh(pi)/(5*pi),   (3*sinh(pi))/(5*pi),     (3*sin(3*x)*sinh(pi))/(5*pi) - (cos(3*x)*sinh(pi))/(5*pi)]
%[ 4, (2*sinh(pi))/(17*pi), -(8*sinh(pi))/(17*pi), (2*cos(4*x)*sinh(pi))/(17*pi) - (8*sin(4*x)*sinh(pi))/(17*pi)]
%[ 5,    -sinh(pi)/(13*pi),  (5*sinh(pi))/(13*pi),   (5*sin(5*x)*sinh(pi))/(13*pi) - (cos(5*x)*sinh(pi))/(13*pi)]

x=0:20;
y(1)=a0/2;
for m=1:20
    y(m+1)=a(m)+1i*b(m);
end
yd=20*log10(abs(y)/abs(y(2)));

plot(x,yd)
grid on;

function [a0,a,b,abf]=fourierterm(f)
syms x real
syms m integer
a0=int(f(x),x,-pi,pi)/pi;
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi;
a(m)=simplify(subs(a(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
af(m)=a(m)*cos(m*x);
b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi;
b(m)=simplify(subs(b(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
bf(m)=b(m)*sin(m*x);
abf(m)=af(m)+bf(m);
end
