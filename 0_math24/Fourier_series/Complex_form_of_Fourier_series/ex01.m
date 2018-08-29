% Using the complex form of writing, find the expansion 
% in a Fourier series of the function
% f(x) = sign(x) = -1, -pi<=x<=0
%                   1, 0<x<=pi

clear
pi1=pi
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,-1,0<x<=pi,1)
digits(4)

c0=1/(2*pi)*int(f(x),x,-pi,pi)
% 0
syms n integer;
assume(n>=1)
c(n)=1/(2/pi)*int(f(x)*exp(-i*n*x),x,-pi,pi)
% (pi*(((exp(-pi*n*1i) - 1)*1i)/n + ((exp(pi*n*1i) - 1)*1i)/n))/2
pretty(c(n))
% 1i/(pi*n)*((exp(-pi*n*1i)+exp(pi*n*1i))/2-1)
% 1i/(pi*n)*((-1)^n-1)
c(n)=1i/(pi*n)*((-1)^n-1)

for n=1:7
    n1(n)=sym(n);
    c1(n)=c(n);
end
ft=[n1;c1];
c0/2
% 0
ft'
% [ 1,     2i/pi]
% [ 2,         0]
% [ 3, 2i/(3*pi)]
% [ 4,         0]
% [ 5, 2i/(5*pi)]
% [ 6,         0]
% [ 7, 2i/(7*pi)]

syms n k;
c(k)=subs(c(n),n,2*k-1)
% (((-1)^(2*k - 1) - 1)*1i)/(pi*(2*k - 1))
c(k)=-2*i/(pi*(2*k - 1))
fc(k)=c(k)*exp(i*(2*k-1)*x)
% -(exp(x*(k*2i - 1i))*2i)/(pi*(2*k - 1))
for k=1:5
    k2(k)=sym(k);
    c2(k)=c(k);
    fc2(k)=fc(k);
end
ft2=[k2;c2;fc2];
c0/2
% 0
ft2'
% [ 1,     2i/pi,     (exp(-x*1i)*2i)/pi]
% [ 2, 2i/(3*pi), (exp(-x*3i)*2i)/(3*pi)]
% [ 3, 2i/(5*pi), (exp(-x*5i)*2i)/(5*pi)]
% [ 4, 2i/(7*pi), (exp(-x*7i)*2i)/(7*pi)]
% [ 5, 2i/(9*pi), (exp(-x*9i)*2i)/(9*pi)]

ft3=c0;
for k=1:3
    ft3=ft3+fc(k)+fc(-k);
end
ft3=simplify(ft3)
% (2*exp(-x*7i)*(exp(x*2i)*21i + exp(x*4i)*35i - exp(x*8i)*105i - exp(x*10i)*35i - exp(x*12i)*21i + 15i))/(105*pi)