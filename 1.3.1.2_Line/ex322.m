syms x y z t;
M=[1,1,1]
%(x-1)/2=y/3=(z+1)/(-1)

% Equation of the plane projecting the point M onto a straight line
% pl=A*(x-1)+B*(y-1)+C*(z-1)
pl=2*(x-1)+3*(y-1)-(z-1)
% 2*x + 3*y - z - 4 = 0

% Parametric equation of line
x=2*t+1
y=3*t
z=-t-1
% Intersection point
tP=solve(2*x + 3*y - z - 4==0,t)
% t=1/14
P=subs([x y z],t,tP)
% [ 8/7, 3/14, -15/14]

% xP=(xM+xN)/2, yP=(yM+yN)/2, zP=(zM+zN)/2
syms xN yN zN
slv=solve([8/7==(1+xN)/2, 3/14==(1+yN)/2, -15/14==(1+zN)/2])
N=[slv.xN,slv.yN,slv.zN]
% N=[ 9/7, -4/7, -22/7]
