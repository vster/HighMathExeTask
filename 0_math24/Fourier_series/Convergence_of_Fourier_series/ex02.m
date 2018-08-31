% Let the function f(x)=(pi-x)/2 is defined in the interval [0,2*pi]. 
% Find the expansion of this function in a Fourier series in the 
% indicated interval and derive a formula for approximate calculation of the number

clear
pi1=pi;
syms x real;
syms pi;
f(x)=(pi-x)/2

a0=int(f(x),x,0,2*pi)/pi
% 0

syms n integer;
assume(n>=1)
a(n)=int(f(x)*cos(n*x),x,0,2*pi)/pi
% (sin(pi*n)^2 - (n*pi*sin(2*pi*n))/2)/(n^2*pi)
%  =0                  =0
a(n)=sym(0)
af(n)=a(n)*cos(n*x)
% 0

b(n)=int(f(x)*sin(n*x),x,0,2*pi)/pi
% -(cos(pi*n)*sin(pi*n) - n*pi*cos(pi*n)^2)/(n^2*pi)
%             =0               =(-1)^n
pretty(b(n))
b(n)=n*pi/(n^2*pi)
% 1/n
bf(n)=b(n)*sin(n*x)
% sin(n*x)/n

abf(n)=af(n)+bf(n)
% sin(n*x)/n

fplot(f(x),[0 2*pi1]);
grid on
hold on

f1=a0/2;
for n=1:5
    n1(n)=n;
    a1(n)=a(n);
    b1(n)=b(n);
    abf1(n)=abf(n);
    f1=f1+abf(n);
    fplot(f1,[0 2*pi1])
    grid on
end
hold off

a0/2
% 0
ft=[n1;a1;b1;abf1];
ft'
% [ 1, 0,   1,     sin(x)]
% [ 2, 0, 1/2, sin(2*x)/2]
% [ 3, 0, 1/3, sin(3*x)/3]
% [ 4, 0, 1/4, sin(4*x)/4]
% [ 5, 0, 1/5, sin(5*x)/5]

abf2=subs(abf1,x,pi/2)
% [ 1, 0, -1/3, 0, 1/5]

syms n;
abf3(n)=subs(abf(n),x,pi/2)
syms k;
abf4(k)=subs(abf3(n),n,2*k-1)
% sin((pi*(2*k - 1))/2)/(2*k - 1)
abf5(k)=(-1)^(k+1)/(2*k - 1)
% (pi-x)/2=pi/4=sum(n=1:inf)(-1)^(k+1)/(2*k - 1)
% pi = 4*sum(n=1:inf)(-1)^(k+1)/(2*k - 1)

pix=0
for k=1:10
    pix=pix+4*abf5(k);
    vpa(pix)
end