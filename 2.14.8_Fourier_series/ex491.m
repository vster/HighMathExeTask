% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=exp(x); T=2*pi; [-pi;pi]

clear
syms x real;
syms pi;
f(x)=exp(x);

a0=int(f(x),x,-pi,pi)/pi
% (2*sinh(pi))/pi

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% -((exp(-pi)*(cos(pi*m) - m*sin(pi*m)))/(m^2 + 1) - (exp(pi)*(cos(pi*m) + m*sin(pi*m)))/(m^2 + 1))/pi
%                =(-1)^m       =0                               =(-1)^m
a(m) = -((exp(-pi)*(-1)^m)/(m^2 + 1) - (exp(pi)*(-1)^m)/(m^2 + 1))/pi          
a(m)=simplify(a(m))
% (2*(-1)^m*sinh(pi))/(pi*(m^2 + 1))
af(m)=a(m)*cos(m*x)
% (2*(-1)^m*cos(m*x)*sinh(pi))/(pi*(m^2 + 1))

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% ((exp(-pi)*(sin(pi*m) + m*cos(pi*m)))/(m^2 + 1) + (exp(pi)*(sin(pi*m) - m*cos(pi*m)))/(m^2 + 1))/pi
b(m)= ((exp(-pi)*(m*(-1)^m))/(m^2 + 1) + (exp(pi)*( - m*(-1)^m))/(m^2 + 1))/pi
b(m)=simplify(b(m))
% -(2*(-1)^m*m*sinh(pi))/(pi*(m^2 + 1))
bf(m)=b(m)*sin(m*x)
% -(2*(-1)^m*m*sin(m*x)*sinh(pi))/(pi*(m^2 + 1))

abf(m)=af(m)+bf(m)
%(2*(-1)^m*cos(m*x)*sinh(pi))/(pi*(m^2 + 1)) - (2*(-1)^m*m*sin(m*x)*sinh(pi))/(pi*(m^2 + 1))
abf(m)=simplify(abf(m))
% (2*(-1)^m*sinh(pi)*(cos(m*x) - m*sin(m*x)))/(pi*(m^2 + 1))

fplot(f(x),[-3 3]);

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-3 3])
    grid on
end
hold off

a0/2
% sinh(pi)/pi
ft=[m1;a1;b1;abf1];
ft'
% [ 1,         -sinh(pi)/pi,           sinh(pi)/pi]
% [ 2,  (2*sinh(pi))/(5*pi),  -(4*sinh(pi))/(5*pi)]
% [ 3,     -sinh(pi)/(5*pi),   (3*sinh(pi))/(5*pi)]
% [ 4, (2*sinh(pi))/(17*pi), -(8*sinh(pi))/(17*pi)]
% [ 5,    -sinh(pi)/(13*pi),  (5*sinh(pi))/(13*pi)]