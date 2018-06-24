% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1/2+2/3-3/4+4/5+5/6-6/7+...

clear
syms n;
digits(4)
u(n)=(-1)^ceil(2/3*(n+1))*n/(n+1)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     u1(i)=u(i);   
     a(i)=vpa(abs(u(i)));
end
a
% [ 0.5, 0.6667, 0.75, 0.8, 0.8333, 0.8571, 0.875, 0.8889, 0.9, 0.9091]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 1
L=limit(u(n),n,inf)
%
Sa=symsum(abs(u(n)),n,1,inf)
%
Su=symsum(u(n),n,1,inf)
%

% series is diverges