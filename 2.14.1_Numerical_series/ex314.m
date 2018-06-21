% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1/10+7/10^2-13/10^3+19/10^4+25/10^5-31/10^6+...

clear
syms n;
digits(4)
u(n)=(-1)^ceil(2/3*(n+1))*(1+6*(n-1))/10^n

% for n=1:10
%    s(n)=u(n)
% end

% Use the Leibniz test
% 1 condition
%for n=1:6
%     a=vpa(abs(u(n)))
%end
% 0.1>0.07>0.013>0.0019>0.00025>3.1e-5

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
% L=0 => series is converge

Sa=symsum(abs(u(n)),n,1,inf)
% symsum(1/10^n*abs((-1)^ceil((2*n)/3 + 2/3))*(6*n - 5), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% symsum((-1)^ceil((2*n)/3 + 2/3)/10^n*(6*n - 5), n, 1, Inf)

syms i;
digits(3);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:10
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa
Su

