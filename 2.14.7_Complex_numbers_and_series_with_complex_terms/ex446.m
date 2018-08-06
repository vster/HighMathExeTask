% Present in trigonometric form the number z=-12+5i

syms z;
z=sym(-12+5i)
digits(6)

r=abs(z)
% 13
phi=angle(z)
% pi - atan(5/12)
vpa(phi)
% 2.7468
vpa(phi*180/pi)
% 157.38 grad

% z=13*(cos(157.38)+i*sin(157.38)) 
z1=r*(cos(phi)+1i*sin(phi))
% - 12.0 + 5.0i