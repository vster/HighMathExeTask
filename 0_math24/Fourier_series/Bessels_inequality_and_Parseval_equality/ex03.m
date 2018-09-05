% Applying the Parseval's formula to the function
% f(x)=1, if 0<=|x|<=d
%      0, if d<=|x|<=pi
% find the sums of the series
% sum(n=1:inf)sin(n*d)^2/n^2
% and
% sum(n=1:inf)cos(n*d)^2/n^2

clear
pi1=pi
syms x n d real;
syms pi;
assume(0<d<pi);
% d=0.5
f(x)=piecewise(0<=x<=d,1,d<x<=pi,0)
digits(4)

a0=(2*d)/pi
syms n integer;
assume(n>=1)
a(n)=(2*sin(d*n))/(n*pi)
b(n)= sym(0)

% Parseval's formula
% a0^2/2+sum(n=1:inf)(a(n)^2+b(n)^2)=1/pi*int(-pi:pi)f(x)^2*dx
% 1/2*((2*d)/pi)^2+sum(n=1:inf)((2*sin(d*n))/(n*pi))^2=2/pi*int(0:pi)f(x)^2*dx
I=2/pi*int(f(x)^2,x,0,pi)
% (2*d)/pi
% 2*d^2/pi^2+4/pi^2*sum(n=1:inf)sin(d*n)^2/n^2=2*d/pi
% sum(n=1:inf)sin(d*n)^2/n^2=d*(pi-d)/2

% sum(n=1:inf)cos(d*n)^2/n^2=sum(n=1:inf)1/n^2-sum(n=1:inf)sin(d*n)^2/n^2=
%  = pi^2/6-d*(pi-d)/2=(pi^2-3*pi*d+3*d^2)/6
