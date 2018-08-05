% Present in trigonometric form the number z=2+5i

syms z;
z=2+5i

r=sqrt(real(z)^2+imag(z)^2)
% 5.3852
phi=atan(imag(z)/real(z))
% 1.1903
z1=r*(cos(phi)+1i*sin(phi))
%  2.0000 + 5.0000i

r2=abs(z)
% 5.3852
phi2=angle(z)
% 1.1903
z2=r2*(cos(phi2)+1i*sin(phi2))
% 2.0000 + 5.0000i

z3=r2*exp(1i*phi2)
% 2.0000 + 5.0000i