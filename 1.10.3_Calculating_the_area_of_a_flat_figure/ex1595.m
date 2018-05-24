% Calculate the area of a figure bounded by a lemiscate
syms teta;
% ro^2=2*cos(2*teta)

% S=1/2* int (alfa-beta) ro^2 d_teta
S=4*1/2*int(2*cos(2*teta),teta,0,pi/4)
% 2