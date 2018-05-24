syms a teta;
ro=a*sin(3*teta)

ezpolar(ro/a)

% S = int (alfa-beta) ro^2 d_teta
S=1/2*int(ro^2,teta,0,pi/3)
% (pi*a^2)/12