% Expand on the even harmonics function
% f(x) = 1-x/d, 0<=x<=d
%        0,     d<x<=pi

clear
pi1=pi
syms x d real;
syms pi;
assume(0<d<pi);
% d=1
f(x)=piecewise(0<=x<=d,1-x/d,d<x<=pi,0)
digits(4)

a0=(2/pi)*int(f(x),x,0,pi)
% d/pi
syms n integer;
assume(n>=1)
a(n)=(2/pi)*int(f*cos(n*x),x,0,pi)
% (4*sin((d*n)/2)^2)/(d*n^2*pi)
af(n)=a(n)*cos(n*x)
% (4*sin((d*n)/2)^2*cos(n*x))/(d*n^2*pi)

% b(n)=(2/pi)*int(f*sin(n*x),x,0,pi)
%
%  =0
b(n)= sym(0)
bf(n)=b(n)*sin(n*x)
% 0
abf(n)=af(n)+bf(n)
% (4*sin((d*n)/2)^2*cos(n*x))/(d*n^2*pi)

% fplot(f(x),[0,pi1])
% hold on
% grid on

f1=a0/2;
for n=1:10
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    if (n==3 || n==10)
    %     fplot(f1,[0 pi1]);
    end
    % grid on
end
% hold off

ft=[n1;a1;b1;abf1];
a0/2
% d/(2*pi)
ft'
% [  1,        (4*sin(d/2)^2)/(d*pi), 0,          (4*sin(d/2)^2*cos(x))/(d*pi)]
% [  2,              sin(d)^2/(d*pi), 0,            (cos(2*x)*sin(d)^2)/(d*pi)]
% [  3,  (4*sin((3*d)/2)^2)/(9*d*pi), 0,  (4*sin((3*d)/2)^2*cos(3*x))/(9*d*pi)]
% [  4,          sin(2*d)^2/(4*d*pi), 0,        (sin(2*d)^2*cos(4*x))/(4*d*pi)]
% [  5, (4*sin((5*d)/2)^2)/(25*d*pi), 0, (4*sin((5*d)/2)^2*cos(5*x))/(25*d*pi)]