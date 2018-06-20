% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1.1-1.02+1.003-1.0004+...+(-1)^(n-1)*(1+n/10^n)+...

clear
syms n;
digits(6)
u(n)=(-1)^(n-1)*(1+n/10^n)
% Use the Leibniz test

% 1 condition
for n=1:6
     a=vpa(abs(u(n)))
end
% 1.1>1.02>1.003>1.0004>1.00005>...
% 2 condition
syms n;
L=limit(abs(u(n)),n,inf)
% 1
% L>0 => series is diverges