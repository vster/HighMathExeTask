% Calculate the mass of a square plate with side a
syms x y k a;
% plate density
gam=k*(x^2+y^2)

M=int(int(k*(x^2+y^2),x,0,a),y,0,a)
% (2*a^4*k)/3