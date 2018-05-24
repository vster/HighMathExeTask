syms teta;
ro=4/cos(teta-pi/6)
% pi/6<=teta<=pi/3

% S = 1/2 int (alfa-beta)  ro^2 d_teta
S=1/2*int(ro^2,teta,pi/6,pi/3)
% (8*3^(1/2))/3