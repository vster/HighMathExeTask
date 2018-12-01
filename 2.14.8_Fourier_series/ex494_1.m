% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=-h on [-pi;0]
%       h  on [0;pi]
% T=2*pi;

clear
pi1=pi;
syms x h real;
syms pi;
% h=1
f(x)=piecewise(-pi<x<0,-h,0<=x<pi,h)
% fplot(f(x),[-pi1 pi1]);

syms m integer;
assume(m>=1)
[a0,a(m),b(m),abf(m)]=fourierseries(f)

% fplot(f(x),[-pi1 pi1]);
% grid on
% hold on

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    % fplot(f1,[-pi1 pi1])
    % grid on
end
% hold off

a0/2
% 0
ft=[m1;a1;b1;abf1];
ft'
% [ 1, 0,     (4*h)/pi,       (4*h*sin(x))/pi]
% [ 2, 0,            0,                     0]
% [ 3, 0, (4*h)/(3*pi), (4*h*sin(3*x))/(3*pi)]
% [ 4, 0,            0,                     0]
% [ 5, 0, (4*h)/(5*pi), (4*h*sin(5*x))/(5*pi)]

f(x)=subs(f(x),h,1)
fplot(f(x),[-pi1 pi1]);
grid on
hold on

syms m;
abf2(m)=4*h*sin((2*m-1)*x)/((2*m-1)*pi)
abf2(m)=subs(abf2(m),h,1)

f3=a0/2;
for m=1:3
    m3(m)=m;
    abf3(m)=abf2(m);
    f3=f3+abf3(m);
    fplot(f3,[-pi1 pi1])
    grid on    
end
hold off
ft3=[m3;abf3];
ft3'
% [ 1,       (4*sin(x))/pi]
% [ 2, (4*sin(3*x))/(3*pi)]
% [ 3, (4*sin(5*x))/(5*pi)]