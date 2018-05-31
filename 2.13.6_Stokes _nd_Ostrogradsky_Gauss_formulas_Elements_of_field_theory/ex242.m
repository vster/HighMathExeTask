% Find the flux of the radius vector 
% r=x*i+y*j+z*k
% through the outer surface of the cylinder

syms x y z R h dS real;
r=[x y z]

% Pniz =  int int (S) rn dS = 0
% Pbok = int int (S) R dS = R*Sbok = 2*pi*R^2*h
Pbok=2*pi*R^2*h

% Pverh = h* int int (S) dS = h*Sosn = pi*R^2*h
Pverh=pi*R^2*h

P=Pbok+Pverh
% 3*pi*R^2*h

