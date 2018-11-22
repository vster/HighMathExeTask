syms x y z
% y*x*dz/dx+x*z*dz/dy=-2*x*y
% x^2+y^2=16,z=3

% dx/(y*z)=dy/(x*z)=-dz/(2*x*y)

% x*dx-y*dy=0
% x^2-y^2=C1

% 2*x*dx=-z*dz
% x^2+z^2/2=C2

% x^2+z^2/2=psi(x^2-y^2)
% x^2=16-y^2,z=3
% 16-y^2+9/2=psi(16-2*y^2)

% Put 16-2*y^2=t => y^2=8-t/2
% psi(t)=(t+25)/2
% psi(x^2-y^2)=(x^2-y^2+25)/2
% x^2+z^2/2=(x^2-y^2+25)/2
% x^2+y^2+z^2=25
