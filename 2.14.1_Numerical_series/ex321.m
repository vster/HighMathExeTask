% Investigate the convergence of the series
% 1-1/3+1/9-1/27+...+(-1)^(n-1)*1/3^(n-1)+...

syms n;
digits(3)
u(n)=(-1)^(n-1)*1/3^(n-1)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:8
     a(i)=vpa(abs(u(i)));
end
a
%[ 1.0, 0.333, 0.111, 0.037, 0.0123, 0.00412, 0.00137, 4.57e-4, 1.52e-4, 5.08e-5]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(3^(1 - n)*abs((-1)^(n - 1)), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% 3/4

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:12
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa
% [ 1.0, 1.333, 1.444, 1.481, 1.494, 1.498, 1.499, 1.5, 1.5, 1.5, 1.5, 1.5]
Su
% [ 1.0, 0.6667, 0.7778, 0.7407, 0.7531, 0.749, 0.7503, 0.7499, 0.75, 0.75, 0.75, 0.75]
% series is converge conditional absolute