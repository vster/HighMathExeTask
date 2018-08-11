% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=|x|; T=2; [-1;1]

clear
syms x real;
f(x)=abs(x);
L=1;

a0=(1/L)*int(f(x),x,-1,1)
% 1/2
syms m integer;
assume(m>=1)
a(m)=(1/L)*int(f(x)*cos(m*pi*x/L),x,-1,1)
% -(2*(4*sin((pi*m)/4)^2 - m*pi*sin((pi*m)/2)))/(m^2*pi^2)
af(m)=a(m)*cos(m*pi*x/L)

b(m)=(1/L)*int(f(x)*sin(m*pi*x/L),x,-1,1)
% 0
bf(m)=b(m)*sin(m*pi*x/L)
% 0

fplot(f(x),[-1 1]);
hold on;

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    af1(m)=af(m);
    bf1(m)=bf(m);
    f1=f1+af(m)+bf(m);
    fplot(f1,[-1 1])
    grid on
end
hold off
f1
%

a0/2
% 1/2
ft=[m1;a1;b1;af1;bf1];
ft'