% Вычислить стат момент пластинки

syms x y a b;
gam=y
y1=b*(1-x/a)

Mx=int(int(y*y,y,0,y1),x,0,a)
% (a*b^3)/12