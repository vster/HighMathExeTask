% Expand in the Fourier series a periodic function with period 2l, 
% given on the interval [-l;l] as follows
%         0 on -l<=x<=0
% f(x) =  x on 0<=x<=l/2
%         l/2 in l/2<=x<=l

clear
syms x L real;
syms pi;
assume(L>0);
% L=4;
f(x)=piecewise(-L<=x<=0,0,0<=x<=L/2,x,L/2<=x<=L,L/2)
digits(4)
% fplot(f,[-L,L])
% hold on

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseriesL(f,L)

f1=a0/2;
for m=1:5
    % disp([sin((pi*m)/2)^2 1/2*(1-(-1)^m)])
    % disp([m,a(m),b(m)]);
    m1(m)=sym(m);
    a1(m)=a(m);
    b1(m)=b(m);
    f1=f1+abf(m);
    % fplot(f1,[-4 4]);
    % hold on
    % grid on
end
ft=[m1;a1;b1];
ft'
% [ 1,      -L/pi^2,    (L*(pi + 2))/(2*pi^2)]
% [ 2,  -L/(2*pi^2),                -L/(4*pi)]
% [ 3,  -L/(9*pi^2), (L*(3*pi - 2))/(18*pi^2)]
% [ 4,            0,                -L/(8*pi)]
% [ 5, -L/(25*pi^2), (L*(5*pi + 2))/(50*pi^2)]

function [a0,a,b,abf]=fourierseriesL(f,L)
syms x real
syms m integer

a0=(1/L)*int(f(x),x,-L,L)
a(m)=(1/L)*int(f*cos(m*pi*x/L),x,-L,L)
a(m)=simplify(subs(a(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
af(m)=a(m)*cos(m*pi*x/L)

b(m)=(1/L)*int(f*sin(m*pi*x/L),x,-L,L)
b(m)=simplify(subs(b(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]));
bf(m)=b(m)*sin(m*pi*x/L)
abf(m)=af(m)+bf(m)
end
