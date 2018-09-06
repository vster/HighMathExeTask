% Convergence of Fourier series

% Some definitions
% It is said that a function f (x) defined in the interval [a, b] 
% is piecewise continuous if it is continuous everywhere 
% in a given interval, with the exception of a finite 
% number of points of discontinuity
% The function f (x) defined in the interval [a, b] is piecewise 
% smooth if the function itself and its derivative are piecewise 
% continuous in a given interval.

% Partial sums of the Fourier series
% We introduce the notion of the partial sum of the Fourier series 
% f(x,N) of the function f(x) given in the interval [-pi, pi]. 
% It is defined by expression
% f(x,N)=a0/2+sum(n=1:N)(a(n)*cos(n*x)+b(n)*sin(n*x))
% In the complex form, the partial sum f(x,N) of the function f (x), 
% given in the interval [-pi, pi], is expressed by the formula
% f(x,N)=sum(n=-N:N)c(n)*exp(i*n*x)=
%  = int(-pi:pi)[1/(2*pi)*sum(n=-N:N)exp(i*n*(x-y))]*f(y)dy

% Kernel Dirichlet
% Function
% D(x,N)=sum(n=-N:N)exp(i*n*x)=sin((N+1/2)*x)/sin(pi/2)
% is called the Dirichlet kernel
% The partial sum of the Fourier series is expressed in terms 
% of the Dirichlet kernel as follows:
% f(x,N)=1/(2*pi)*int(-pi:pi)D(x-y,N)*f(x)*dy = 
%   =1/(2*pi)*int(-pi:pi)D(y,N)*f(x-y)*dy

% In this section we consider three types of convergence of Fourier series: 
% convergence at a point, uniform convergence 
% and convergence in the space L2.

% Convergence of the Fourier series at the point
% Let f (x) be a piecewise smooth function in the interval [-pi, pi]. 
% Then for any x0 in [-pi, pi] the condition
% lim(N->inf)f(x0,N) = f(x0), if f(x) is continuous in [-pi, pi]
%                     f(x0-0)+f(x0+0))/2, if f(x) has a discontinuity at x0

% Uniform convergence of the Fourier series
% It is said that the sequence of partial sums of the Fourier series 
% {f(x,N)} converges uniformly to the function f(x) if the rate 
% of convergence of the partial sums f(x,N) does not depend on x. 
% We say that the Fourier series of f(x) converges uniformly 
% to this function if
% lim(N->inf)[max(x in [-pi,pi])|f(x)-f(x,N)|]=0
% Theorem. The Fourier series of a 2*pi-periodic continuous 
% and piecewise-smooth function converges uniformly.

% Convergence of the Fourier series in the space L2
% The space L2 (-pi, pi) is formed by functions that satisfy the condition 
% int(-pi:pi)|f(x)|^2*dx<inf
% We say that a function f(x) is quadratically integrable if it belongs 
% to the class L2. If f(x) is square integrable, then
% lim(N->inf)1/(2*pi)int(-pi:pi)|f(x)-f(x,N)|^2=0
% that is, the partial sums fN (x) converge to f (x) in the 
% sense of the mean square value.

% The phenomenon of Gibbs
% If the function has a discontinuity of the second kind at some point, 
% then the partial sums of the Fourier series will oscillate 
% near this point. This effect is called the phenomenon 
% or phenomenon of Gibbs. At any break point of the second kind, 
% the emission amplitude is approximately 18% (as n -> inf) 
% larger than the amplitude of the jump in the function 
% at the discontinuity point.
