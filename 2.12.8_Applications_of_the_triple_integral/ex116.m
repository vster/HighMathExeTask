% Find the cube mass
% 0<=x<=a, 0<=y<=a, 0<=z<=a
% gam=x+y+z

syms x y z a;
gam=x+y+z
M=int(int(int(gam,z,0,a),y,0,a),x,0,a)
% (3*a^4)/2