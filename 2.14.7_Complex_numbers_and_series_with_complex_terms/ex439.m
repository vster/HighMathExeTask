% Present in trigonometric form the number z=2*sqrt(3)-2*i

syms z;
z=sym(2*sqrt(3)-2i)

r=abs(z)
% 4
phi=angle(z)
% -pi/6

% z=4*(cos(-pi/6)+isin(-pi/6))
z1=r*(cos(phi)+1i*sin(phi))
% 2*3^(1/2) - 2i