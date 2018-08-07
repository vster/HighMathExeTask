% Find all values (i)^(1/4)

clear
syms z;
z=i

z1=z^(1/4)
% 0.9239 + 0.3827i
r=abs(z)
% 1
phi=angle(z)
% 1.5708

for k=1:4
    zv(k)=r^(1/4)*(cos((phi+2*pi*(k-1))/4)+1i*sin((phi+2*pi*(k-1))/4));
    zt(k)=zv(k)^4;
end
disp(zv)
% 0.9239 + 0.3827i  -0.3827 + 0.9239i  -0.9239 - 0.3827i   0.3827 - 0.9239i
disp(zt)

for k=1:4
    zv2(k)=r^(1/4)*exp(1i*(phi+2*pi*(k-1))/4);
    zt2(k)=zv2(k)^4;       
end
disp(zv2)
% 0.9239 + 0.3827i  -0.3827 + 0.9239i  -0.9239 - 0.3827i   0.3827 - 0.9239i
disp(zt2)