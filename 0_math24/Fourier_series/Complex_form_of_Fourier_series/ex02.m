% Find the Fourier series expansion in complex form for the function 
% f (x) = x^2 given in the interval [-1,1]

clear
pi1=pi
syms x real;
syms pi;
L=1;
f(x)=x^2
digits(4)

c0=1/(2*L)*int(f(x),x,-L,L)
% 1/3
syms n integer;
assume(n>=1)
c(n)=1/(2/L)*int(f(x)*exp(-i*n*pi*x/L),x,-L,L)
% (exp(-pi*n*1i)*(pi^2*n^2*1i + 2*pi*n - 2i))/(2*n^3*pi^3) + (exp(pi*n*1i)*(- pi^2*n^2*1i + 2*pi*n + 2i))/(2*n^3*pi^3)
pretty(c(n))
c(n)=expand(c(n))
% (exp(-pi*n*1i)*1i)/(2*n*pi) - (exp(pi*n*1i)*1i)/(2*n*pi) + exp(-pi*n*1i)/(n^2*pi^2) + exp(pi*n*1i)/(n^2*pi^2) - (exp(-pi*n*1i)*1i)/(n^3*pi^3) + (exp(pi*n*1i)*1i)/(n^3*pi^3)
% c(n)=1/(n*pi)*sin(n*pi)+2/(n^2*pi^2)*cos(n*pi)-2/(n^3*pi^3)*sin(n*pi) 
%               =0                     =(-1)^n                =0
c(n)=2/(n^2*pi^2)*(-1)^n
cf(n)=c(n)*exp(i*n*pi*x/L)
% (2*(-1)^n*exp(pi*n*x*1i))/(n^2*pi^2)

fplot(f(x),[-L,L])
hold on
grid on

f1=c0;
for n=1:5
    n1(n)=sym(n);
    c1(n)=c(n);
    cn1(n)=c(-n);
    cf1(n)=cf(n);
    cfn1(n)=cf(-n);
    abf1(n)=simplify(cf1(n)+cfn1(n));
    f1=f1+abf1(n);
    fplot(f1,[-L L]);
    grid on    
end
hold off

ft=[n1;c1;cn1;cf1;cfn1;abf1];
c0
% 1/3
ft'
% [ 1,      -2/pi^2,      -2/pi^2,      -(2*exp(-pi*x*1i))/pi^2,      -(2*exp(pi*x*1i))/pi^2,        -(4*cos(pi*x))/pi^2]
% [ 2,   1/(2*pi^2),   1/(2*pi^2),       exp(-pi*x*2i)/(2*pi^2),       exp(pi*x*2i)/(2*pi^2),           cos(2*pi*x)/pi^2]
% [ 3,  -2/(9*pi^2),  -2/(9*pi^2),  -(2*exp(-pi*x*3i))/(9*pi^2),  -(2*exp(pi*x*3i))/(9*pi^2),  -(4*cos(3*pi*x))/(9*pi^2)]
% [ 4,   1/(8*pi^2),   1/(8*pi^2),       exp(-pi*x*4i)/(8*pi^2),       exp(pi*x*4i)/(8*pi^2),       cos(4*pi*x)/(4*pi^2)]
% [ 5, -2/(25*pi^2), -2/(25*pi^2), -(2*exp(-pi*x*5i))/(25*pi^2), -(2*exp(pi*x*5i))/(25*pi^2), -(4*cos(5*pi*x))/(25*pi^2)]