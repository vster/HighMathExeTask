% Solve the two-term equation
% w^3-4*sqrt(2)(1+i)=0

clear
syms z;
z=sym(4*sqrt(2)*(1+i))
% 2^(1/2)*(4 + 4i)
r=abs(z)
% 2^(1/2)*32^(1/2)
phi=angle(z)
% pi/4

syms k;
n=3;
for k=1:n
    w(k)=r^(1/n)*(cos((phi+2*pi*(k-1))/n)+1i*sin((phi+2*pi*(k-1))/n));
    wt(k)=w(k)^n;
end
w=w'
simplify(w)
% 2^(1/2)*(1/2 + 1i/2) + 6^(1/2)*(1/2 - 1i/2)
%                          2^(1/2)*(- 1 - 1i)
% 2^(1/2)*(1/2 + 1i/2) - 6^(1/2)*(1/2 - 1i/2)
vpa(w)
%   1.93185 - 0.517638i
%  - 1.41421 - 1.41421i
% - 0.517638 + 1.93185i
simplify(wt)
% [ 2^(1/2)*(4 + 4i), 32^(1/2)*(1 + 1i), 2^(1/2)*(4 + 4i)]