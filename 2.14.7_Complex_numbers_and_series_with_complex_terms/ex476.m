% Present in exponential form number
% z=sqrt(2)-1i*sqrt(2)

z=sym(sqrt(2)-1i*sqrt(2))
r=abs(z)
% 2
phi=angle(z)
% -pi/4

% z1=2*(cos(-pi/4)+i*sin(-pi/4))
z1=r*(cos(phi)+1i*sin(phi))
% 2^(1/2)*(1 - 1i)

% z2=2*exp(-pi*1i/4)
z2=r*exp(1i*phi)
% 2^(1/2)*(1 - 1i)

