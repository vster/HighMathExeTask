% Find 
% rot(r*a)*b
% where r=xi+yj+zk,a=i+j+k,b=i-j-k

syms x y z;
r=[x y z]
a=[1 1 1]
b=[1 -1 -1]

P=curl(dot(r,a)*b)
[0 2 -2]