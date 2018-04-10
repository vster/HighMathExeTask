% Ќайти площадь лепестка розы, зад. уравнением
% ro=cos(2*teta)

syms ro teta;
S=int(int(ro,ro,0,cos(2*teta)),teta,-pi/4,pi/4)
% pi/8