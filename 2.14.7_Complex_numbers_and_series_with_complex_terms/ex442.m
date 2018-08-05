% Find all values (8+i)^(1/3)

clear
syms z;
z=8+i

z1=z^(1/3)
% 2.0035 + 0.0831i
r=abs(z)
% 8.0623
phi=angle(z)
% 0.1244

for k=1:3
    zv(k)=r^(1/3)*(cos((phi+2*pi*(k-1))/3)+1i*sin((phi+2*pi*(k-1))/3));
    zt(k)=zv(k)^3;
end
disp(zv)
disp(zt)

for k=1:3
    zv2(k)=r^(1/3)*exp(1i*(phi+2*pi*(k-1))/3);
    zt2(k)=zv2(k)^3;       
end
disp(zv2)
disp(zt2)