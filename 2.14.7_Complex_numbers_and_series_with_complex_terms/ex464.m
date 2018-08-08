% Investigate the convergence of the series
% (1+i)+(1/2+1i*1/3)+...+(1/2^(n-1)+1i*1/3^(n-1))+...

clear
syms n;
u(n)=1/2^(n-1)
v(n)=1/3^(n-1)
w(n)=u(n)+1i*v(n)

for k=1:6
    w1(k)=w(k);
end
disp(w1)
% [ 1 + 1i, 1/2 + 1i/3, 1/4 + 1i/9, 1/8 + 1i/27, 1/16 + 1i/81, 1/32 + 1i/243]

Lu=limit(u(n),n,inf)
% 0
Lv=limit(v(n),n,inf)
% 0
% u(n) and v(n) converges => w(n) converges

Su=symsum(u(n),n,1,inf)
% 2
Sv=symsum(v(n),n,1,inf)
% 3/2
Sw=Su+1i*Sv
% 2 + 3i/2

S2=symsum(w(n),n,1,inf)
% 2 + 3i/2