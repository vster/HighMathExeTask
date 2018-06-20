% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% sum(n=1:inf)(-1)^(n-1)*(n+1)/(n^2+n+1)

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)*(n+1)/(n^2+n+1)
% Use the Leibniz test

S=symsum(u(n),n,1,inf)

% 1 condition
%for n=1:6
%     a=vpa(abs(u(n)))
%end
% 0.6667>0.4286>0.3077>0.2381>0.1935>0.1628>...

% 2 condition
syms n;
L=limit(abs(u(n)),n,inf)
% 0
% L=0 => series is converge
S=symsum(u(n),n,1,inf)
% symsum(((-1)^(n - 1)*(n + 1))/(n^2 + n + 1), n, 1, Inf)
S=symsum(abs(u(n)),n,1,inf)
% symsum((abs((-1)^(n - 1))*(n + 1))/(n^2 + n + 1), n, 1, Inf)

Su=0
for n=1:20
    Su=Su+u(n);  
end
vpa(Su)

Sa=0
for n=1:20
    Sa=Sa+abs(u(n));  
end
vpa(Sa)
