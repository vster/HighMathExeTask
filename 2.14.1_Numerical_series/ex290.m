% Investigate the convergence of the series
% 1.1-1.01+1.001+...+(-1)^(n-1)*(1+0.1^n)+...

syms n;
u(n)=(-1)^(n-1)*(1+0.1^n)
% Use the Leibniz test
% 1 condition
% for n=1:5
%    a=vpa(abs(u(n)))
% end
% 1.1>1.01>1.001>... => ok
% 2 condition
L=limit(abs(u(n)),n,inf)
% 1 > 0 => Series is diverges