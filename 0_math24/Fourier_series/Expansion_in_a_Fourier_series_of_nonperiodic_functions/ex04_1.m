% Find the expansion in the Fourier series of the function
% f(x)=cos(x)^2

clear
syms x L real;
syms pi;
L=pi/2;
f(x)=cos(x)^2
digits(4)

syms m integer;
[a0,a(m),b(m),abf(m)]=fourierseriesL(f,L)

%fplot(f(x),[0,L])
%hold on
%grid on

f1=a0/2
for n=1:5
    n1(n)=sym(n);
    a1(n)=a(n);
    b1(n)=b(n);
    f1=f1+abf(n);
    abf1(n)=abf(n);
    %fplot(f1,[0 L]);
    %hold on
    %grid on
end
ft=[n1;a1;b1;abf1];
f1
% cos(2*x)/2 + 1/2
a0/2
% 1/2
ft'
% [ 1, 1/2, 0, cos(2*x)/2]
% [ 2,   0, 0,          0]
% [ 3,   0, 0,          0]
% [ 4,   0, 0,          0]
% [ 5,   0, 0,          0]