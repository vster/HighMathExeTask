% Expand in the Fourier series a periodic function given 
% on the half-period [0;2] by the equation f(x)=x-1/2*x^2.

syms x pi;
f=x-1/2*x^2;
l=2;

% 1)
a0=int(x-1/2*x^2,x,0,2)
% 2/3
syms m integer;
assume(m>=1)
a(m)=(2/l)*int(f*cos(m*pi*x/l),x,0,2)
% (8*sin(pi*m))/(m^3*pi^3) - (4*cos(pi*m))/(m^2*pi^2) - 4/(m^2*pi^2)
%     =0                          (-1)^m
a(m)=-((-1)^m+1)*(4/(m^2*pi^2))

b(m)=(2/l)*int(f*sin(m*pi*x/l),x,0,2);
% (16*sin((pi*m)/2)^2)/(m^3*pi^3) - (4*sin(pi*m))/(m^2*pi^2)
%        =0                               =0
b(m)=0

f1=a0/2
for m=1:7
    m1(m)=m;
    a1(m)=a(m);
    f1=f1+a(m)*cos(m*pi*x/l);
    fplot(f1,[-0 2]);
    hold on
    grid on
end
hold off

disp(f1)
% 1/3 - cos(2*pi*x)/(2*pi^2) - (2*cos(3*pi*x))/(9*pi^2) - (2*cos(pi*x))/pi^2

ft=[m1;a1];
ft'
% [ 1,           0]
% [ 2,     -2/pi^2]
% [ 3,           0]
% [ 4, -1/(2*pi^2)]
% [ 5,           0]
% [ 6, -2/(9*pi^2)]
% [ 7,           0]
