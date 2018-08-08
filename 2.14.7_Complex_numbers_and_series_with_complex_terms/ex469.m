% Show that the series
% w(n)=1/5^n-i/2^n 
% converges and find its sum

clear
syms n;
u(n)=1/5^n
v(n)=-1/2^n
w(n)=u(n)+1i*v(n)

for k=1:6
    w1(k)=w(k);
end
disp(w1)
% [ 1/5 - 1i/2, 1/25 - 1i/4, 1/125 - 1i/8, 1/625 - 1i/16, 1/3125 - 1i/32, 1/15625 - 1i/64]

Lu=limit(u(n),n,inf)
% 0
Lv=limit(v(n),n,inf)
% 0
% u(n) and v(n) coberges => w(n) convergs

Su=symsum(u(n),n,1,inf)
% 1/4
Sv=symsum(v(n),n,1,inf)
% -1i
Sw=Su+1i*Sv
% 1/4-1i

S2=symsum(w(n),n,1,inf)
% 1/4 - 1i