% Investigate the convergence of the series
% -1/3+1/5-1/7+...+(-1)^n*1/(2*n+1)+...

syms n;
digits(4)
u(n)=(-1)^n*1/(2*n+1)

% Use the Leibniz test
% 1 condition
% for n=1:5
%     a=vpa(abs(u(n)))
% end
% 0.3333>0.2>0.1429>0.1111

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
S=symsum(u(n),n,1,inf)
% pi/4 - 1
% series is converge