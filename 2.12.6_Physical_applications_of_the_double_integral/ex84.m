% Найти ЦТ
% ro=a*sin(2*teta)

syms a teta ro;

ro1=sin(2*teta)
ezpolar(ro1)

S=int(int(ro,ro,0,a*sin(2*teta)),teta,0,pi/2)
% (pi*a^2)/8
xm=1/S*int(int(ro*ro*cos(teta),ro,0,a*sin(2*teta)),teta,0,pi/2)
% (128*a)/(105*pi)
ym=1/S*int(int(ro*ro*sin(teta),ro,0,a*sin(2*teta)),teta,0,pi/2)
% (128*a)/(105*pi)