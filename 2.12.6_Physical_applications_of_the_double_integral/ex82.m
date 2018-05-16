% Find the center of gravity
% ro=a*(1+cos(teta))
% x=ro*cos(teta)
% y=ro*sin(teta)

syms a teta ro;
% ro1=1+cos(teta)

% ezpolar(ro1)
% grid on

S=int(int(ro,ro,0,a*(1+cos(teta))),teta,0,2*pi)
% (3*pi*a^2)/2
xm=1/S*int(int(ro*ro*cos(teta),ro,0,a*(1+cos(teta))),teta,0,2*pi)
% (5*a)/6
ym=1/S*int(int(ro*ro*sin(teta),ro,0,a*(1+cos(teta))),teta,0,2*pi)
% 0