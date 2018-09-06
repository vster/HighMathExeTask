% Bessel's inequality and Parseval equality
% Bessel's inequality
% Consider a piecewise continuous function f(x) defined in the interval 
% [-pi, pi]. Its Fourier expansion has the form
% f(x)=a0/2+sum(n=1:inf)(a(n)*cos(n*x)+b(n)*sin(n*x))
% In the Bessel inequality it is established that
% a0^2/2+sum(n=1:inf)(a(n)^2+b(n)^2)<=1/pi*int(-pi:pi)f(x)^2*dx
% It follows that the series 
% sum(n=1:inf)(a(n)^2+b(n)^2) converges.

% Parseval equality
% If f (x) is a square-integrable function in the interval 
% [-pi, pi], so that relation
% int(-pi:pi)f(x)^2*dx<=inf
% then the Bessel inequality becomes an equality. 
% In this case the Parseval formula is valid:
% a0^2/2+sum(n=1:inf)(a(n)^2+b(n)^2)=1/pi*int(-pi:pi)f(x)^2*dx

% The Parseval formula in complex form
% Again, assume that f(x) is a square-integrable function in the 
% interval [-pi, pi]. 
% Let c(n) be its complex Fourier coefficients, that is,
% f(x)=sum(n=-inf:inf)c(n)*exp(i*n*x)
% where
% c(n)=1/(2*pi)*int(-pi:pi)f(x)*exp(-i*n*x)*dx
% Then the Parseval formula is written in the form
% sum(n=-inf:inf)|c(n)|^2=1/(2*pi)*int(-pi:pi)f(x)^2*dx
% We note that the energy of the 2*pi-periodic wave f(x) is equal to
% E=1/pi*int(-pi:pi)f(x)^2*dx
