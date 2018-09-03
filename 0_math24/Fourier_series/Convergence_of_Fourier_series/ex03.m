% Prove that the Fourier series of the function f(x) = x^2 converges 
% uniformly to f (x) in the interval [-pi, pi].

syms x n;
f(x)=x^2
a0=2*pi/3;
abf(n)=(4*(-1)^n*cos(n*x))/n^2

% f(x,N)=pi^2/3+4*sum(n=1:N)(-1)^n*cos(n*x)/n^2
% |f(x)-f(x,N)|=|4*sum(n=1:inf)(-1)^n*cos(n*x)/n^2-4*sum(n=1:N)(-1)^n*cos(n*x)/n^2|
%  =|4*sum(n=N+1:inf)(-1)^n*cos(n*x)/n^2|
%  <=4*sum(n=N+1:inf)|(-1)^n*cos(n*x)/n^2|
%  <=4*sum(n=N+1:inf)1/n^2 ->0 (if N->inf)
