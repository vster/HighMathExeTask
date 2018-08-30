% Using the complex form of writing, find the Fourier series for the function
% f(x)=a*sin(x)/(1-2*a*cos(x)+a^2)
% |a|<1

clear
pi1=pi
syms x;
syms pi a;
assume(-1<a<1)
% a=0.5
f(x)=a*sin(x)/(1-2*a*cos(x)+a^2)
digits(4)
f(x)=subs(f(x),[cos(x) sin(x)],[(exp(i*x)+exp(-i*x))/2 (exp(i*x)-exp(-i*x))/(2*i)])
f(x)=simplify(f(x))
% (a*((exp(-x*1i)*1i)/2 - (exp(x*1i)*1i)/2))/(a^2 - 2*a*(exp(-x*1i)/2 + exp(x*1i)/2) + 1)
pretty(f(x))
f(x)=1/(2*i)*a*(exp(i*x)-exp(-i*x))/((1-a*exp(i*x))*(1-a*exp(-i*x)))
expand(f(x))

c0=1/(2*pi)*int(f(x),x,-pi,pi)
% 0
syms n integer;
assume(n>=1)
c(n)=1/(2/pi)*int(f(x)*exp(-i*n*x),x,-pi,pi)
%
pretty(c(n))
%
%
%
cf(n)=c(n)*exp(i*n*x)
%

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
%
ft'