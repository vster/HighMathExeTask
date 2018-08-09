% Expand the Fourier series of a periodic function f(x) with period 2, 
% given in the interval (-1;1) by the equation f(x)=x^2.

syms x pi;
f(x)=x^2;
l=1;

a0=(2/l)*int(f(x),x,0,1)
% 2/3

syms m integer;
assume(m>=1)
a(m)=(2/l)*int(f(x)*cos(m*pi*x/l),x,0,1)
% (2*(m^2*pi^2*sin(pi*m) - 2*sin(pi*m) + 2*m*pi*cos(pi*m)))/(m^3*pi^3)
%                =0             =0               =(-1)^m 
% a(m)=4*m*pi*(-1)^m/(m^3*pi^3)
a(m)=4*(-1)^m/(m^2*pi^2)
% f(x)-even => b(m)=0

f1=a0/2;
for m=1:5
    f1=f1+a(m)*cos(m*pi*x);
    fplot(f1,[-1 1]);
    hold on
    grid on
end
hold off
