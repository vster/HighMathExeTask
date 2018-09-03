% Expansion in a Fourier series of nonperiodic functions

% Expansion in a Fourier series in the interval [-L, L]
% f(x)=a0/2+sum(n=1:inf)(a(n)*cos(n*pi*x/L)+b(n)*sin(b*pi*x/L))
% a0=1/L*int(-L:L)f(x)dx
% a(n)=1/L*int(-L:L)f(x)*cos(n*pi*x/L)dx
% b(n)=1/L*int(-L:L)f(x)*sin(n*pi*x/L)dx

% Even and odd functions
% The expansion in a Fourier series of an even function defined 
% in the interval [-L, L] has the form
% f(x)=a0/2+sum(n=1:inf)a(n)*cos(n*pi*x/L)
% where
% a0=2/L*int(0:L)f(x)dx
% a(n)=2/L*int(0:L)f(x)*cos(n*pi*x/L)dx

% The Fourier series expansion of an odd function given 
% in the interval [-L, L] is expressed by the formula
% f(x)=sum(n=1:inf)b(n)*sin(n*pi*x/L)
% b(n)=2/L*int(0:L)f(x)*sin(n*pi*x/L)dx