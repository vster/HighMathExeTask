% Find the flux of a vector field
% F=(2z-x)*i+(x+2z)*j+3z*k
% through the side of the triangle S, 
% cut out from the plane x+4y+z-4=0

syms x y z real;
f=x+4*y+z-4
N=[1 4 1]
Nn=norm(sym(N))
n=N/Nn

cos_alfa=n(1)
cos_beta=n(2)
cos_gamma=n(3)

% cos_alfa*dS=dy*dz
% cos_beta*dS=dx*dz
% cos_gamma*dS=dx*dy

P=2*z-x
Q=x+2*z
R=3*z

% P = int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS
% P = int int (S) (2*z-x)*dy*dz+(x+2*z)*dz*dx+3*z*dx*dy

I1=int(int(2*z-(4-4*y-z),z,0,4-4*y),y,0,1)
% 8/3
I2=int(int(x+2*z,x,0,4-z),z,0,4)
% 32
I3=int(int(3*(4-x-4*y),y,0,1-x/4),x,0,4)
% 8
I=I1+I2+I3
% 128/3