% Present in trigonometric and exponential form the number
% z=3+sqrt(3)*1i

z=sym(3+1i*sqrt(3))
r=abs(z)
% 2*3^(1/2)
phi=angle(z)
% pi/6

% z1=2*3^(1/2)*(sin(pi/6)+1i*sin(pi/6))
z1=r*(cos(phi)+1i*sin(phi))
% 2*3^(1/2)*(3^(1/2)/2 + 1i/2)

% z2=2*3^(1/2)*exp(1i*pi/6)
z2=r*exp(1i*phi)
% 2*3^(1/2)*(3^(1/2)/2 + 1i/2)