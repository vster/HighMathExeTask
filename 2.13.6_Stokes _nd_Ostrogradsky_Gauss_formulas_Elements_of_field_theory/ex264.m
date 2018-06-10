% Find
% div(u*v)
% where u=x*i+y*j+z*k, v=y*i+z*j+x*k

syms x y z;
r=[x y z]
u=[x y z]
v=[y z x]

P=divergence(cross(u,v),r)
% x + y + z