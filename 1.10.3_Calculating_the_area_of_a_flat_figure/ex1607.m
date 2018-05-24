syms teta a;
ro=sin(teta/2)^2

ezpolar(ro)

% S = int (alfa-beta) ro^2 d_teta
S=1/2*int(ro^2,0,pi/2)
% (3*pi)/32 - 1/4