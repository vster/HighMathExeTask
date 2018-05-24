syms a teta;
ro1=a*cos(teta)
ro2=2*a*cos(teta)

ezpolar(ro1/a)
hold on
ezpolar(ro2/a)
grid on
hold off

S1=1/2*int(ro1^2,0,2*pi)
S2=1/2*int(ro2^2,0,2*pi)
S=S2-S1
% (3*pi*a^2)/2
