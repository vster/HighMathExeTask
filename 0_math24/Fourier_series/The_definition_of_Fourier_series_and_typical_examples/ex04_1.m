% Suppose that f(x) is a periodic function with period 2*pi. 
% Let f (x) = x2 for x is [-pi, pi]. 
% Find the Fourier expansion for a given parabolic function.

clear
pi1=pi;
syms x real;
syms pi;
f(x)=x^2

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseries(f)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for n=1:5
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
% pi^2/3
ft=[n1;a1;b1;abf1];
ft'
% [ 1,    -4, 0,        -4*cos(x)]
% [ 2,     1, 0,         cos(2*x)]
% [ 3,  -4/9, 0,  -(4*cos(3*x))/9]
% [ 4,   1/4, 0,       cos(4*x)/4]
% [ 5, -4/25, 0, -(4*cos(5*x))/25]