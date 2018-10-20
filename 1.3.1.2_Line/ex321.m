syms x y z t;
pl=x+y-2*z-6
M=[1,1,1]

% The normal line from M to the plane
% (x-1)/l=(y-1)/m=(z-1)/n
n=[1,1,-2]
% (x-1)/1=(y-1)1=(z-1)/(-2)
x=t+1
y=t+1
z=-2*t+1

% Point of projection M on the plane
slv=solve(x+y-2*z-6==0,t)
% t=1
P=[2,2,-1]

% Symmetric point
% xP=(xM+xN)/2, yP=(yM+yN)/2, zP=(zM+zN)/2
% 2=(1+xN)/2, 2=(1+yN)/2, -1=(1+zN)/2
N=[3,3,-3]
