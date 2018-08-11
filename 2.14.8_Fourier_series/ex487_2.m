% Expand in the Fourier series a periodic function given 
% on the half-period [0;2] by the equation f(x)=x-1/2*x^2.

syms x pi;
% 2)
syms f(x)
f=piecewise(-2<x<=0,x+1/2*x^2,0<=x<2,x-1/2*x^2)
% f=x-1/2*x^2
l=4
fplot(f,[-2 2])
hold on
digits(4)

a0=int(f,x,-2,2)
% 0
syms m integer;
assume(m>=1)
a(m)=(1/l)*int(f*cos(m*pi*x/l),x,-2,2)
% 0
b(m)=(1/l)*int(f*sin(m*pi*x/l),x,-2,2)
% (64*sin((pi*m)/4)^2)/(m^3*pi^3) - (8*sin((pi*m)/2))/(m^2*pi^2)
b(m)=simplify(b(m))

for m=1:5
    b1(m)=b(m);
end
disp(b1)
% [ 32/pi^3 - 8/pi^2, 8/pi^3, 8/(9*pi^2) + 32/(27*pi^3), 0, 32/(125*pi^3) - 8/(25*pi^2)]
vpa(b1)
% (8*(8*sin((pi*m)/4)^2 - m*pi*sin((pi*m)/2)))/(m^3*pi^3)

f1=a0/2;
for m=1:10
    f1=f1+b(m)*sin(m*pi*x/l);
    fplot(f1,[-2 2]);
    hold on
    grid on
end
hold off
disp(f1)

% ???