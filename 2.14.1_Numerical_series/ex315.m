% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% (3+1/2)+(3+1/4)-(3+1/8)-(3+1/16)+(3+1/32)+(3+1/64)-...

clear
syms n;
digits(4)
u(n)=(-1)^(ceil(1/2*n)+1)*(3+1/2^n)

% for n=1:10
%    s(n)=u(n)
% end

% Use the Leibniz test
% 1 condition
for n=1:6
     a=vpa(abs(u(n)))
end
% 3.5>3.25>3.125>3.062>3.031>3.016

% 2 condition
syms n;
L=limit(abs(u(n)),n,inf)
% 3
% L>0 => series is diverges