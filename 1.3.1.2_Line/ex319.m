syms x y z n;
% Прямая 1
% (x+1)/3=(y+5)/2=z/1
x1=-1
y1=-5
z1=0
l1=3
m1=2
n1=1

% Прямая 2
% x/2=y/(-3)=z/n
x2=0
y2=0
z2=0
l2=2
m2=-3
n2=n

F=[x2-x1,y2-y1,z2-z1;l1,m1,n1;l2,m2,n2]
dF=det(F)
n=solve(dF)

n2=n

% x=2*z y=-3*z
z1=solve((2*z+1)/3==(-3*z+5)/2)
%z1=1
x1=2
y1=-3
M=[2,-3,1]
