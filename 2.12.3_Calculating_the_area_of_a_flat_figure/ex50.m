syms ro teta;
ro1=2*(1+cos(teta))
ro2=2*cos(teta)

ezpolar(ro1)
hold on
ezpolar(ro2)
hold off

S=2*int(int(ro,ro,ro2,ro1),teta,0,pi)
% 4*pi - неправильно (?) должно быть 5*pi