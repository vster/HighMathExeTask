% Expand on the even harmonics function
% f(x) = 1, 0<=x<=d
%        0, d<x<=pi

clear
pi1=pi
syms x d real;
syms pi;
assume(0<d<pi);
% d=0.5
f(x)=piecewise(0<=x<=d,1,d<x<=pi,0)
digits(4)

a0=(2/pi)*int(f(x),x,0,pi)
% (2*d)/pi
syms n integer;
assume(n>=1)
a(n)=(2/pi)*int(f*cos(n*x),x,0,pi)
% (2*sin(d*n))/(n*pi)
af(n)=a(n)*cos(n*x)
% (2*sin(d*n)*cos(n*x))/(n*pi)

% b(n)=(2/pi)*int(f*sin(n*x),x,0,pi)
%
%  =0               =(-1)^n
b(n)= sym(0)
bf(n)=b(n)*sin(n*x)
% 0
abf(n)=af(n)+bf(n)
% (2*sin(d*n)*cos(n*x))/(n*pi)

% fplot(f(x),[0,pi1])
% hold on
% grid on

f1=a0/2
for n=1:20
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    if (n==5 || n==20)
        % fplot(f1,[0 pi1]);
    end
    % hold on
    % grid on
end
ft=[n1;a1;b1;abf1];
a0/2
% d/pi
ft'
% [  1,         (2*sin(d))/pi, 0,            (2*sin(d)*cos(x))/pi]
% [  2,           sin(2*d)/pi, 0,          (sin(2*d)*cos(2*x))/pi]
% [  3,   (2*sin(3*d))/(3*pi), 0,    (2*sin(3*d)*cos(3*x))/(3*pi)]
% [  4,       sin(4*d)/(2*pi), 0,      (sin(4*d)*cos(4*x))/(2*pi)]
% [  5,   (2*sin(5*d))/(5*pi), 0,    (2*sin(5*d)*cos(5*x))/(5*pi)]