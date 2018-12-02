% Find the Fourier series expansion for a sawtooth function 
% defined in the interval [-pi, pi] and having a period 2*pi

clear
pi1=pi;
syms x real;
syms pi;
f(x)=x

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
% 0
ft=[n1;a1;b1;abf1];
ft'
% [ 1, 0,    2,       2*sin(x)]
% [ 2, 0,   -1,      -sin(2*x)]
% [ 3, 0,  2/3, (2*sin(3*x))/3]
% [ 4, 0, -1/2,    -sin(4*x)/2]
% [ 5, 0,  2/5, (2*sin(5*x))/5]