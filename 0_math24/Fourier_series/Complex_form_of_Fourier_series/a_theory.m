% Complex form of Fourier series

% Let the function f(x) be defined in the interval [-pi, pi]. 
% Applying Euler's formulas
% cos(phi)=(exp(i*phi)+exp(-i*phi))/2
% sin(phi)=(exp(i*phi)-exp(-i*phi))/2i

% we can write the Fourier series of a given function in a complex form:
% f(x)=a0/2+sum(n=1:inf)(a(n)*cos(n*x)+b(n)*sin(n*x))=
% a0/2+sum(n=1:inf)(a(n)*(exp(i*n*x)+exp(-i*n*x))/2+b(n)*(exp(i*n*x)-exp(-i*n*x))/2i)=
% =a0/2+sum(n=1:inf)(a(n)-i*b(n))/2*exp(i*n*x)+sum(n=1:inf)(a(n)+i*b(n))/2*exp(-i*n*x)=
% = sum(n=-inf:inf)c(n)*exp(i*n*x)

% We used here the following notation:
% c0=a0/2
% c(n)=(a(n)-i*b(n))/2
% c(-n)=(a(n)+i*b(n))/2

% Coefficients c(n) are called complex Fourier coefficients. 
% They are defined by formulas
% c(n)=1/(2*pi)*int(-pi:pi)f(x)exp(-i*n*x)dx
% n=0,+-1,+-2,..

% If it is necessary to construct an extension of a function f (x) 
% having an arbitrary period 2L, 
% then the corresponding expression in complex form has the form:
% f(x)=sum(n=-inf:inf)c(n)*exp(i*pi*n*x/L)
% where
% c(n)=1/(2*L)*int(-L:L)f(x)*exp(-i*n*pi*x/L)dx
% n=0,+-1,+-2,..