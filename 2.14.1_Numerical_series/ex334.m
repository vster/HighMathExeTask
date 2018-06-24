% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1-1/2^2+1/3^2-1/4^2+...+(-1)^(n-1)/n^2+...

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)/n^2

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     u1(i)=u(i);   
     a(i)=vpa(abs(u(i)));
end
u1
% [ 1, -1/4, 1/9, -1/16, 1/25, -1/36, 1/49, -1/64, 1/81, -1/100]
a
% [ 1.0, 0.25, 0.1111, 0.0625, 0.04, 0.02778, 0.02041, 0.01562, 0.01235, 0.01]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(abs((-1)^(n - 1))/n^2, n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% pi^2/12

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:40
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa(30:40)
% [ 1.612, 1.613, 1.614, 1.615, 1.616, 1.617, 1.618, 1.618, 1.619, 1.62, 1.62]
Su(30:40)
% [ 0.8219, 0.823, 0.822, 0.8229, 0.822, 0.8229, 0.8221, 0.8228, 0.8221, 0.8228, 0.8222]

% series is converge absolute