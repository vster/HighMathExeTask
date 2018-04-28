syms ro teta a;
ro1=a*(1+cos(teta))

S=2*int(int(ro,ro,0,ro1),teta,0,pi)
% 4*pi - неправильно (?) должно быть 5*pi