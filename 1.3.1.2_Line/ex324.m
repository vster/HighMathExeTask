syms x y z lam;
% Straight
% (x-1)/1=(y+1)/2=z/3
% Find the projection equation on the plane
% x+y+2*z-5=0
A1=1
B1=1
C1=2

% x0y
pl1=(y+1)/2-(x-1)/1
pl1=pl1*(-2)
% x - z/3 - 1 = 0

% x0z
pl2=(x-1)/1-z/3
pl2=pl2*3
% 3*x - z - 3 = 0

% Plane beam equation
pl3=pl1+lam*pl2
pl3=expand(pl3)
A2=2+3*lam
B2=-1
C2=-lam

% The condition of perpendicular planes
% A1*A2+B1*B2+C1*C2=0
slv=solve(A1*A2+B1*B2+C1*C2==0,lam)
lam1=slv
% lam=-1
pl3=subs(pl3,lam,lam1)
pl3=-pl3
% x + y - z = 0

% Line of intersection of two planes
% x+y+2*z-5=0
% x+y-z=0

N1=[1,1,2]
N2=[1,1,-1]

s=cross(N1,N2)

% x=0
slv=solve(y+2*z-5==0,y-z==0)
M1=[0 5/3 5/3]

% x/(-3)=(y-5/3)/3=(z-5/3)/0
% x/1=(y-5/3)/(-1)=(z-5/3)/0

