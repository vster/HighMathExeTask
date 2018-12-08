z=sqrt(sym(3))+i
syms k
ro=abs(z)
% 2
phi=angle(z)
% pi/6
w=log(abs(z))+(phi+sym(2*k*pi))*i
% (pi*1i)/6 + log(2) + pi*k*2i