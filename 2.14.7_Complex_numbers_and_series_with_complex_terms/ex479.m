% Present in exponential form number
% z=sqrt(3)+i

z=sym(sqrt(3)+1i)
r=abs(z)
% 2
phi=angle(z)
% pi/6

% z1=2*(cos(pi/6)+1i*sin(pi/6))
z1=r*(cos(phi)+1i*sin(phi))
% 3^(1/2) + 1i

% z2=2*exp(1i*pi/6)
z2=r*exp(1i*phi)
% 3^(1/2) + 1i