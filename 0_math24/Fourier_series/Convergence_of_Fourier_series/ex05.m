% It is known that the Fourier series of the function 
% f(x) =(pi-x)/2
% given in the interval [0,2?], is expressed by the formula 
% f(x) =(pi-x)/2=sun(n=1:inf)sin(n*x)/n
% Investigate the behavior of the partial sums fN (x).

syms x n;
f(x)=(pi-x)/2;
abf(n)=sin(n*x)/n

% f(x,N)=sum(n=1:N)sin(n*x)/n
% f(x,N)=int(0:x)(sum(n=1:N)cos(n*t))dt
% ...
% ???