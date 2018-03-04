syms teta;
ro1=2*cos(teta)
ro2=1

ezpolar(ro1)

S2=1/2*int(ro1^2,-pi/2,pi/2)
vpa(S2)

% Не завершен
