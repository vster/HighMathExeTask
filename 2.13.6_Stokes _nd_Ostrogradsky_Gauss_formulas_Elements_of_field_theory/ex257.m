% Find the flux of a vector field
% F=(y-x)*i+(x+y)*j+y*k
% through the side of the triangle S, 
% cut out from the plane x+y+z-1=0
% by coordinate planes

syms x y z real;
f=x+y+z-1
N=[1 1 1]
Nn=norm(sym(N))
n=N/Nn

cos_alfa=n(1)
cos_beta=n(2)
cos_gamma=n(3)

% cos_alfa*dS=dy*dz
% cos_beta*dS=dx*dz
% cos_gamma*dS=dx*dy

P=y-x
Q=x+y
R=y

% P = int int (S) (P*cos_alfa+Q*cos_beta+R*cos_gamma)*dS
% P = int int (S) (y-x)*dy*dz+(x+y)*dz*dx+y*dx*dy

% x=1-y-z
I1=int(int(y-(1-y-z),z,0,1-y),y,0,1)
% 0

% y=1-x-z
I2=int(int(x+(1-x-z),z,0,1-x),x,0,1)
% 1/3

I3=int(int(y,x,0,1-y),y,0,1)
% 1/6

I=I1+I2+I3
% 1/2
