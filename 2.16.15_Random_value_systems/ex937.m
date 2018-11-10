syms x y a f(x,y)
% x^2+y^2<=r^2
f(x,y)=a*(x^2+y^2)
% a*int int (D)(x^2+y^2) dxdy = 1

syms r ro teta
II=a*int(int(ro^3,ro,0,r),teta,0,2*pi)
% (pi*a*r^4)/2 = 1 => a=2/(pi*r^4)