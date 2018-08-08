% Show that the series 
% w(n)=((1+i)/2)^n
% converges absolutely

syms n;
w(n)=((1+i)/2)^n

for k=1:6
    w1(k)=w(k);
end
disp(w1)
% [ 1/2 + 1i/2, 1i/2, - 1/4 + 1i/4, -1/4, - 1/8 - 1i/8, -1i/8]

% 1+i=sqrt(2)*(cos(pi/4)+1i*sin(pi/4)
wt=sym((cos(pi/4)+1i*sin(pi/4))/sqrt(2))
% 1/2 + 1i/2
% w(n)=(cos(pi/4)+1i*sin(pi/4))^n*(1/2^(n/2))
w(n)=(cos(n*pi/4)+1i*sin(n*pi/4))*(1/2^(n/2))
% 1/2^(n/2)*(cos((pi*n)/4) + sin((pi*n)/4)*1i)

for k=1:6
    w2(k)=w(k);
end
disp(w2)
% [ 1/2 + 1i/2, 1i/2, - 1/4 + 1i/4, -1/4, - 1/8 - 1i/8, -1i/8]

% r(n)=|w(n)|
r(n)=1/2^(n/2)
% 1/2^(n/2)

Lr=limit(r(n),n,inf)
% 0 => w(n) converges
