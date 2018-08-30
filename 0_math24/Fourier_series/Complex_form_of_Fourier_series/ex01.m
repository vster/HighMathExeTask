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
cf(n)=c(n)*exp(i*n*x)
% (exp(n*x*1i)*((-1)^n - 1)*1i)/(n*pi)

fplot(f(x),[-pi1,pi1])
hold on
grid on

f1=sym(0);
for n=1:10
    n1(n)=sym(n);
    c1(n)=c(n);
    cn1(n)=c(-n);
    cf1(n)=cf(n);
    cfn1(n)=cf(-n);
    abf1(n)=simplify(cf1(n)+cfn1(n));
    f1=f1+abf1(n);
    if (n==3 || n==10)
        fplot(f1,[-pi1 pi1]);
    end
    grid on    
end
hold off

ft=[n1;c1;cn1;cf1;cfn1;abf1];
c0/2
% 0
ft'
% [ 1,     2i/pi,     -2i/pi,     (exp(-x*1i)*2i)/pi,     -(exp(x*1i)*2i)/pi,       (4*sin(x))/pi]
% [ 2,         0,          0,                      0,                      0,                   0]
% [ 3, 2i/(3*pi), -2i/(3*pi), (exp(-x*3i)*2i)/(3*pi), -(exp(x*3i)*2i)/(3*pi), (4*sin(3*x))/(3*pi)]
% [ 4,         0,          0,                      0,                      0,                   0]
% [ 5, 2i/(5*pi), -2i/(5*pi), (exp(-x*5i)*2i)/(5*pi), -(exp(x*5i)*2i)/(5*pi), (4*sin(5*x))/(5*pi)]



