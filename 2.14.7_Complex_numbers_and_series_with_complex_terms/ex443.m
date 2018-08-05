% Solve the two-term equation
% w^5+32i=0

% w^5=-32i=32*(cos(-pi/2)+1i*sin(-pi/2))
% w=2*(cos(-pi/2)+1i*sin(-pi/2))^(1/5)

clear
r=32
phi=-pi/2

syms k;
for k=1:5
    w(k)=r^(1/5)*(cos((phi+2*pi*(k-1))/5)+1i*sin((phi+2*pi*(k-1))/5));
    wt(k)=w(k)^5;
end
disp(w)
% 1.9021 - 0.6180i   1.1756 + 1.6180i  -1.1756 + 1.6180i  -1.9021 - 0.6180i  -0.0000 - 2.0000i
disp(wt)