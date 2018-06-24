% Investigate the convergence of alternating series 
% and establish the nature of convergence (absolute, conditional)
% 1/log(2)-1/log(3)+1/log(4)-1/log(5)+...+(-1)^(n-1)/log(n+1)+...

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)/log(n+1)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     u1(i)=u(i);   
     a(i)=vpa(abs(u(i)));
end
u1
% [ 1/log(2), -1/log(3), 1/log(4), -1/log(5), 1/log(6), -1/log(7), 
% 1/log(8), -1/log(9), 1/log(10), -1/log(11)]
a
% [ 1.443, 0.9102, 0.7213, 0.6213, 0.5581, 0.5139, 0.4809, 0.4551, 0.4343, 0.417]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum(abs((-1)^(n - 1))/log(n + 1), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% symsum((-1)^(n - 1)/log(n + 1), n, 1, Inf)

syms i;
digits(4);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:200
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa(190:200)
% [ 48.34, 48.53, 48.72, 48.91, 49.1, 49.29, 49.48, 
%    49.67, 49.85, 50.04, 50.23]
Su(190:200)
% [ 0.8292, 1.019, 0.8293, 1.019, 0.8295, 1.019, 0.8297, 
%     1.019, 0.8299, 1.019, 0.8301]
% series is converges conditional