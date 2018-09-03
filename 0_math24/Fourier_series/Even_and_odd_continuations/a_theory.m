% Even and odd continuations

% Suppose that f (x) is a piecewise-continuous function defined 
% in the interval [0, pi]. 
% To find the expansion of a given function in a Fourier series, 
% it is necessary to continue it and construct it in the interval [-pi,pi].

% In the case of an even function, the Fourier series expansion 
% is described by expression
% f_ev(x)=a0/2+sum(n=1:inf)a(n)cos(n*x)
% where
% a(n)=2/pi*int(0:pi)f(x)*cos(n*x)dx, n=0,1,2,3,...

% In the case of an odd function, respectively, we obtain
% f_odd(x)=sum(n=1:inf)b(n)*sin(n*x)
% where
% b(n)=2/pi*int(0:pi)f(x)*sin(n*x)dx, n=1,2,3,...

% The concept of an even and odd extension of a function can 
% also be introduced for a nonperiodic function. 
% Let the function f(x) be defined in the interval [0, L]. 
% Using an even extension of this function to the interval [-L, L], 
% we obtain the following Fourier series expansion formula:
% f_ev(x)=a0/2+sum(n=1:inf)a(n)*cos(n*pi*x/L)
% where
% a(n)=2/L*int(0:L)f(x)*cos(n*pi*x/L)dx, n=0,1,2,3,...

% In the case of an odd extension, the corresponding formula has the form
% f_odd(x)=sum(n=1:inf)b(n)*sin(n*pi*x/L)
% where
% b(n)=2/L*int(0:L)f(x)*sin(n*pi*x/L)dx, n=1,2,3,...