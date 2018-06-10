% Find
% rot(r*a)*r
% where r=x*i+y*j+z*k, a= i+j+k

syms x y z
r=[x y z]
a=[1 1 1]

P=curl(dot(r,a)*r)
% [z - y, x - z, y - x]