% Find the Fourier series for the signx function:
% f(x)=sign(x)= -1, -pi<=x<=0
%               1,  0<x<=pi
% if it is known that the Fourier series expansion of the function 
% F(x) = |x| in the interval [-pi, pi] has the form
% F(x)=|x|=pi/2-4/pi*sum(n=0:inf)cos((2*n+1)*x)/(2*n+1)^2

% f(x)=diff(F(x)) for all x/=0
% f(x)=diff(pi/2-4/pi*sum(n=0:inf)cos((2*n+1)*x)/(2*n+1)^2)

syms x n;
% a0=diff(pi/2)=0
abf(x,n)=4/pi*cos((2*n+1)*x)/(2*n+1)^2
abdf(x,n)=diff(abf,x)
% -(4*sin(x*(2*n + 1)))/(pi*(2*n + 1))
% f(x)=4/pi*sum(n=0:inf)sin(x*(2*n + 1))/(2*n + 1)