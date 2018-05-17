% Calculate the triple integral
% I = int int int (T) (x+y+z)^2 dx dy dz
% T - common part of a paraboloid
% z>=(x^2+y^2)/(2*a)
% and the ball x^2+y^2+z^2<=3*a^2

syms x y z a;
f1=(x+y+z)^2
z1=(x^2+y^2)/(2*a)
z2=sqrt(3*a^2-x^2-y^2)

y1=-sqrt(2*a^2-x^2)
y2=sqrt(2*a^2-x^2)

I1=int(int(int(f1,z,z1,a),y,y1,y2),x,-a,a)
I2=int(int(int(f1,z,a,z2),y,y1,y2),x,-a,a)

% Don't work :(

