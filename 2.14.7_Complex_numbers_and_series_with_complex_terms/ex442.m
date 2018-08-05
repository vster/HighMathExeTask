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
% 2.0035 + 0.0831i  -1.0737 + 1.6935i  -0.9298 - 1.7766i
disp(zt)

for k=1:3
    zv2(k)=r^(1/3)*exp(1i*(phi+2*pi*(k-1))/3);
    zt2(k)=zv2(k)^3;       
end
disp(zv2)
% 2.0035 + 0.0831i  -1.0737 + 1.6935i  -0.9298 - 1.7766i
disp(zt2)