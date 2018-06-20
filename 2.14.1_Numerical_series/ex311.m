% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1/2-4/5+7/8-10/11+...+(-1)^(n-1)*(3*n-2)/(3*n-1)+...

clear
syms n;
digits(5)
u(n)=(-1)^(n-1)*(3*n-2)/(3*n-1)
% Use the Leibniz test
% 1 condition
for n=1:6
    a=vpa(abs(u(n)))
end
% 0.5<0.8<0.875<0.90909<0.92857<0.94118...
% 2 condition
syms n;
L=limit(abs(u(n)),n,inf)
% 1
% L>0 => series is diverges