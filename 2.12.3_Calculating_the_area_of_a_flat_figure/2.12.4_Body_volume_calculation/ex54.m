% x^2+y^2=a^2
% x^2+z^2=a^2

syms x y a;
V=8*int(int(sqrt(a^2-x^2),y,0,sqrt(a^2-x^2)),x,0,a)
% (16*a^3)/3