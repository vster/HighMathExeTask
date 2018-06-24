% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 2/(2^3+1)-3/(3^3+2)+4/(4^3+3)+...+(-1)^(n-1)*(n+1)/((n+1)^3+n)+...

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)*(n+1)/((n+1)^3+n)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     a(i)=vpa(abs(u(i)));
end
a
% [ 0.2222, 0.1034, 0.0597, 0.03876, 0.02715, 0.02006, 0.01541, 
% 0.01221, 0.009911, 0.008203]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum((abs((-1)^(n - 1))*(n + 1))/(n + (n + 1)^3), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% symsum(((-1)^(n - 1)*(n + 1))/(n + (n + 1)^3), n, 1, Inf)

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:50
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa(40:50)
% [ 0.5797, 0.5803, 0.5808, 0.5813, 0.5818, 0.5823, 0.5827, 0.5832, 0.5836, 0.584, 0.5844]
Su(40:50)
% [ 0.1552, 0.1557, 0.1552, 0.1557, 0.1552, 0.1557, 0.1552, 0.1557, 0.1552, 0.1556, 0.1553]
% series is converge absolute