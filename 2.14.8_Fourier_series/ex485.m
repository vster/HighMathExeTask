% Expand the Fourier series of a periodic function f(x)
% with period 2*pi, given in the interval (-pi;pi) by the equation 
% f(x)=pi+x.

clear
syms x;
f(x)=pi+x;

a0=int(f(x),x,-pi,pi)/pi
% 2*pi

syms m integer;
assume(m>=1)

a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% (2*sin(pi*m))/m
a(m)=0

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% b(m)=(2*(sin(pi*m) - m*pi*cos(pi*m)))/(m^2*pi)
b(m)=2*(-m*pi*cos(pi*m))/(m^2*pi)
% -(2*cos(pi*m))/m
b(m)=2/m*(-1)^(m+1)

bt(m)=b(m)*sin(m*x)
% (2*(-1)^(m + 1)*sin(m*x))/m

f1=a0/2;
for m=1:5
    f1=f1+bt(m);
    fplot(f1,[-pi pi])
    hold on
    grid on
end
hold off