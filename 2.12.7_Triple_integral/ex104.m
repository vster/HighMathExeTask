% Calculate the triple integral
% I = int int int (T) (2x+3y-z) dx dy dz
% T - bounded by surfaces
% z=0, z=a, x=0, y=0, x+y=b

syms x y z a b;
f1=2*x+3*y-z

I=int(int(int(f1,z,0,a),y,0,b-x),x,0,b)
% -(a*b^2*(3*a - 10*b))/12