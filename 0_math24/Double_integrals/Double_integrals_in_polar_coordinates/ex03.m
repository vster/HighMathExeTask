% int int (R) sin(teta) d_ro d_teta
% ro=1+cos(teta)

syms ro teta;
I=int(int(sin(teta),ro,0,1+cos(teta)),teta,0,2*pi)
% 0
