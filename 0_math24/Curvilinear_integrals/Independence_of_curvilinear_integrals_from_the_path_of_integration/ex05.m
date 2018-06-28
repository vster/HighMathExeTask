% Determine if the vector field F (x, y, z) = (yz, xz + 2y, xy + 1) 
% is potential? If so, find its potential

syms x y z;
P=y*z
Q=x*z+2*y
R=x*y+1
F=[P,Q,R]

rot_F=curl(F,[x y z])
% [0 0 0] => field F is potential

syms G(y,z)
u=int(P,x)+G(y,z)
% G(y, z) + x*y*z

Duy=diff(u,y)
% diff(G(y, z), y) + x*z = Q = x*z+2*y => diff(G(y, z), y)==2*y
DGy=2*y

syms H(z)
G(y,z)=int(DGy,y) + H(z)
% y^2 + H(z)
u=x*y*z+y^2 + H(z)

Duz=diff(u,z)
% diff(H(z), z) + x*y = R = x*y+1 => diff(H(z), z)=1
DHz=1

syms C0;
H(z)=int(DHz,z)+C0
% C0 + z
u=x*y*z+y^2+z+C0

F=gradient(u,[x y z])
% [ y*z, 2*y + x*z, x*y + 1]