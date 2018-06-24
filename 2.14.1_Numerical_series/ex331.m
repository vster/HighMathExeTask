% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1-2+3-4+...+(-1)^(n-1)*n+...

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)*n

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     a(i)=vpa(abs(u(i)));
end
a
% [ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]

% 2 condition
L=limit(abs(u(n)),n,inf)
% Inf
L=limit(u(n),n,inf)
% NaN
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(n*abs((-1)^(n - 1)), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% NaN

% series is diverges