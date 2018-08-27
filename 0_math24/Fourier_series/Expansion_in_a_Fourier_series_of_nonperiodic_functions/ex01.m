% Find the expansion in the Fourier series of the function
% f(x) = A, 0<=x<=L
%        0, L<x<=2*L

clear
syms x L A real;
syms pi;
assume(L>0);
% A=2;
% L=4;
f(x)=piecewise(0<=x<=L,A,L<x<=2*L,0)
digits(4)

a0=(1/L)*int(f(x),x,0,2*L)
% A
syms n integer;
assume(n>=1)
a(n)=(1/L)*int(f*cos(n*pi*x/L),x,0,2*L)
% (A*sin(pi*n))/(n*pi)
%    =0
a(n)=0
af(n)=a(n)*cos(n*pi*x/L)
% 0

b(n)=(1/L)*int(f*sin(n*pi*x/L),x,0,2*L)
% (2*A*sin((pi*n)/2)^2)/(n*pi)      
%  =A*(1-(-1)^n)
b(n)=A*(1-(-1)^n)/(n*pi)
bf(n)=b(n)*sin(n*pi*x/L)
% -(A*sin((pi*n*x)/L)*((-1)^n - 1))/(n*pi)
abf(n)=af(n)+bf(n)
% -(A*sin((pi*n*x)/L)*((-1)^n - 1))/(n*pi)

% fplot(f,[0,2*L])
% hold on
% grid on

f1=a0/2
for n=1:5
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    %fplot(f1,[0 2*L]);
    %hold on
    %grid on
end
ft=[n1;a1;b1;abf1];
a0/2
% A/2
ft'
% [ 1, 0,     (2*A)/pi,       (2*A*sin((pi*x)/L))/pi]
% [ 2, 0,            0,                            0]
% [ 3, 0, (2*A)/(3*pi), (2*A*sin((3*pi*x)/L))/(3*pi)]
% [ 4, 0,            0,                            0]
% [ 5, 0, (2*A)/(5*pi), (2*A*sin((5*pi*x)/L))/(5*pi)]

syms n k;
abf2(k)=subs(abf(n),n,2*k-1)
% -(A*sin((x*pi*(2*k - 1))/L)*((-1)^(2*k - 1) - 1))/(pi*(2*k - 1))
%                              =-1
abf2(k)=2*A*sin((x*pi*(2*k - 1)/L))/(pi*(2*k - 1))

for k=1:3
    k3(k)=k;
    abf3(k)=abf2(k);
end
ft2=[k3;abf3]
a0/2
% A/2
ft2'
% [ 1,       (2*A*sin((pi*x)/L))/pi]
% [ 2, (2*A*sin((3*pi*x)/L))/(3*pi)]
% [ 3, (2*A*sin((5*pi*x)/L))/(5*pi)]