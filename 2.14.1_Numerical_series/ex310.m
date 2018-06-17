% Using the integral criterion, 
% investigate the convergence of series
% 1/(9*log(9))+1/(19*log(19))+...+1/((10n-1)*log(10n-1))+...

syms n;
S=symsum(1/((10*n-1)*log(10*n-1)),n,1,inf)

syms x;
I=int(1/((10*x-1)*log(10*x-1)),x,1,inf)
% Inf
% integral is diverges => series is diverges