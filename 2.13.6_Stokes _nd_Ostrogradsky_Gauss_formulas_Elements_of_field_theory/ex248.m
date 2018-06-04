% Find the circulation of the vector F=y*i-x*j+a*k (a=const)
% along the circle x^2+y^2=1,z=0 in the positive direction.

% I way
% Direct calculation of circulation
syms t dt a;
% C
x=cos(t)
y=sin(t)
z=sym(0)
% 0<=t<=2*pi
P=y
% sin(t)
Q=-x
% -cos(t)
R=a

% C = int (C) P*dx+Q*dy+R*dz
dx=diff(x)*dt
dy=diff(y)*dt
dz=diff(z)*dt

df=P*dx+Q*dy+R*dz
df=simplify(df)
C=int(df/dt,t,0,2*pi)
% -2*pi

% II way
% Application of the Stokes formula
clear
syms x y z a real
F=[y,-x,a]
rot_F=curl(F,[x y z])
% 0 0 -2

% n=k
% C = int int (S) n*rot_F*dS =
%   = -2* int int (S) n*k*dS = -2* int int (S) dx*dy

% x^2+y^2=1 => 0<=ro<=1,0<=teta<=2*pi
syms teta ro;
C=-2*int(int(ro,ro,0,1),teta,0,2*pi)
% -2*pi
