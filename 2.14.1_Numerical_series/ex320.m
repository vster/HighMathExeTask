% Investigate the convergence of the series
% 1-1/2+1/3-1/4+...+(-1)^(n-1)*1/n+...

syms n;
digits(4)
u(n)=(-1)^(n-1)*1/n

% Use the Leibniz test
% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(abs((-1)^(n - 1))/n, n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% log(2)
% series is converge conditional

syms i;
digits(3);
Sa(1)=vpa(abs(u(1)));
for i=2:20
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Da(i)=Sa(i)-Sa(i-1);
end
Sa

Su(1)=vpa(u(1));
for i=2:20
    Su(i)=Su(i-1)+vpa(u(i));
    Du(i)=Su(i)-Su(i-1);
end
Su