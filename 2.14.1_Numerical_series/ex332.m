% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1-1/2^4-1/3^4+1/4^4-1/5^4-1/6^4+...

clear
syms n;
digits(4)
u(n)=-(-1)^floor(2/3*(n+1))*1/n^4

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     u1(i)=u(i);   
     a(i)=vpa(abs(u(i)));
end
a
% [ 1.0, 0.0625, 0.01235, 0.003906, 0.0016, 0.0007716, 
%   0.0004165, 0.0002441, 0.0001524, 0.0001]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(abs((-1)^floor((2*n)/3 + 2/3))/n^4, n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% -symsum((-1)^floor((2*n)/3 + 2/3)/n^4, n, 1, Inf)

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:20
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa(5:15)
% [ 1.08, 1.081, 1.082, 1.082, 1.082, 1.082, 1.082, 1.082, 1.082, 1.082, 1.082]
Su(5:15)
% [ 0.9275, 0.9267, 0.9271, 0.9269, 0.9267, 0.9268, 0.9267, 0.9267, 0.9267, 0.9267, 0.9267]

% series is converge absolute