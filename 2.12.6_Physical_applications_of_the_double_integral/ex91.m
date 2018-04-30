% Вычислить момент инерции эллипса
% x^2/a^2+y^2/b^2=1

syms x y a b;

y1=b*sqrt(1-x^2/a^2)

Ix=int(int(y^2,y,-y1,y1),x,-a,a)
% (pi*a*b^3)/4