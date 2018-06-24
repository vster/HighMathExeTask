% Show that series
% 1-2/1!+2^2/2!-2^3/3!+...+(-1)^(n-1)*2^(n-1)/(n-1)!+...
% converges absolutely and raise it square.

clear
syms n;
digits(4)
u(n)=(-1)^(n-1)*2^(n-1)/factorial(n-1);

% Use the Leibniz test
% 1 condition
syms i;
for i=1:10
     u1(i)=u(i);   
     a(i)=vpa(abs(u(i)));
end
u1
% [ 1, -2, 2, -4/3, 2/3, -4/15, 4/45, -8/315, 2/315, -4/2835]
a
% [ 1.0, 2.0, 2.0, 1.333, 0.6667, 0.2667, 0.08889, 0.0254, 0.006349, 0.001411]

% 2 condition
L=limit(abs(u(n)),n,inf)
% 0
L=limit(u(n),n,inf)
% 0
Sa=symsum(abs(u(n)),n,1,inf)
% symsum((2^(n - 1)*abs((-1)^(n - 1)))/factorial(n - 1), n, 1, Inf)
Su=symsum(u(n),n,1,inf)
% exp(-2)
vpa(Su)
% 0.1353
% series is converges absolute
S2=Su*Su
% exp(-4)
vpa(S2)
% 0.01832

u3(n)=(-1)^(n-1)*4^(n-1)/factorial(n-1);
Su3=symsum(u3(n),n,1,inf)
% exp(-2^2)
vpa(Su3)
% 0.01832

syms i;
digits(3);
Sa(1)=vpa(abs(u(1)));
Su(1)=vpa(u(1));
for i=2:20
    Sa(i)=Sa(i-1)+vpa(abs(u(i)));
    Su(i)=Su(i-1)+vpa(u(i));
end
Sa(1:15)
% [ 1.0, 3.0, 5.0, 6.33, 7.0, 7.27, 7.36, 7.38, 7.39, 7.39, 
%   7.39, 7.39, 7.39, 7.39, 7.39]
Su(1:15)
% [ 1.0, -1.0, 1.0, -0.333, 0.333, 0.0667, 0.156, 0.13, 
%   0.137, 0.135, 0.135, 0.135, 0.135, 0.135, 0.135]

