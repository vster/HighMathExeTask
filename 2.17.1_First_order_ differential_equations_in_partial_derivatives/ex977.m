% d4z/(dx2*dy2)=0

syms x y
syms z(x,y)

eqn1=diff(diff(z,y,2),x,2)
eqn2=int(eqn1,x)
% diff(diff(z(x, y), y, y), x)
syms f1(y) f2(y)
eqn2=diff(diff(z(x, y), y, y), x)-f1(y)
eqn3=int(eqn2,x)
% diff(z(x, y), y, y) - x*f1(y)
eqn3=diff(z(x, y), y, y) - x*f1(y) - f2(y)
eqn4=expand(int(eqn3,y))
% diff(z(x, y), y) - x*int(f1(y), y) - int(f2(y), y)
syms phi1(x) phi2(x)
eqn4=diff(z(x, y), y) - x*int(f1(y), y) - int(f2(y), y) - phi1(x)
eqn5=expand(int(eqn4,y))
% z(x, y) - x*int(int(f1(y), y), y) - int(int(f2(y), y), y) - y*phi1(x)
% phi3(y)=int(int(f1(y), y), y)
% phi4(y)=int(int(f2(y), y), y)
syms ksi1(y) ksi2(y)
z(x,y)=  y*phi1(x) + phi2(x) + x*phi3(y) + phi4(y)
