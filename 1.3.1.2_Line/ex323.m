syms x y z lam;
% (x+1)/2=(y-1)/(-1)=(z-2)/3
% x/(-1)=(y+2)/2=(z-3)/(-3)

% x0y
pl1=(x+1)+2*(y-1)
% x + 2*y - 1 = 0
% y0z
pl2=3*(y-1)+(z-2)
% 3*y + z - 5 = 0
% Plane beam equation
pl3=pl1+lam*pl2
% x + 2*y + lam*(3*y + z - 5) - 1 = 0
% x - 5*lam + 2*y + 3*lam*y + lam*z - 1 = 0
A=1
B=2+3*lam
C=lam

% The condition of parallelism of the plane and the line
% A*l+B*m+C*n=0
slv=solve(A*(-1)+B*2+C*(-3),lam)

pl3=subs(pl3,lam,slv)
% x - y - z + 4 = 0