% Calculate the moment of inertia about the 0x axis, 
% bounded by the cardioid
% ro=a*(1+cos(teta))

% Ix = int int (D) y^2 dx dy 
% In polar coordinates
% Ix = int int (D) ro^2*sin(teta)^2*ro d_ro d_teta

syms ro teta a;
Ix=int(int(ro^3*sin(teta)^2,ro,0,a*(1+cos(teta))),teta,0,2*pi)
% (21*pi*a^4)/32
