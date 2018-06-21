% Investigate the convergence of the series
% -1/3+1/5-1/7+...+(-1)^n*1/(2*n+1)+...

syms n;
digits(4)
u(n)=(-1)^n*1/(2*n+1)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     a(i)=vpa(abs(u(i)));
end
% 0.3333>0.2>0.1429>0.1111

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% NaN
Su=symsum(u(n),n,1,inf)
% pi/4 - 1
% series is converge conditional

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:20
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa
Su
