% Definition of the Fourier series
% The Fourier series of the function f (x) is represented in the form
% f(x)=a0/2+sum(n=1:inf){a(n)*cos(n*x)+b(n)*sin(n*x)}
% where the Fourier coefficients a0, a(n) and b(n) are defined by formulas
% a0=1/pi*int(-pi:pi)f(x)dx
% a(n)=1/pi*int(-pi:pi)f(x)*cos(n*x)dx
% b(n)=1/pi*int(-pi:pi)f(x)*sin(n*x)dx

% Sometimes alternative forms of recording for Fourier series are used. 
% Replacing a(n) and b(n) with new variables d(n) and phi(n) 
% or d(n) and teta(n), where
% d(n)=sqrt(a(n)^2+b(n)^2)
% tan(thi(n))=a(n)/b(n)
% tan(teta(n))=b(n)/a(n)

% it is possible, accordingly, to write down
% f(x)=a0/2+sum(n=1:inf)d(n)*sin(n*x+phi(n))
% or
% f(x)=a0/2+sum(n=1:inf)d(n)*cos(n*x+teta(n))

% Fourier series expansion of even and odd functions
% The Fourier expansion of an even function f(x) with period 2*pi 
% does not contain sines and has the form
% f(x)=a0/2+sum(n=1:inf)a(n)*cos(n*x)
% where the Fourier coefficients are determined by the expressions
% a0=2/pi*int(0:pi)f(x)dx
% a(n)=2/pi*int(0:pi)f(x)*cos(n*x)dx

% Similarly, the Fourier expansion of an odd function f(x) 
% having period 2*pi contains only sines and has the form
% f(x)=sum(n=1:inf)b(n)*sin(n*x)
% where the coefficients b(n) are equal to
% b(n)=2/pi*int(0:pi)f(x)*sin(n*x)dx

