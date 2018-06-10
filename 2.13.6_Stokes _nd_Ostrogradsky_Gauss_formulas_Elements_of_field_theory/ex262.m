% Find the circulation of the vector
% u=(x+z)*i+(x-y)*j+x*k
% by ellipse
% x^2/a^2+y^2/b^2=1

% I way
% Direct calculation of circulation
syms t dt a b;
% C
x=a*cos(t)
y=b*sin(t)
z=sym(0)
% 0<=t<=2*pi
P=x+z
% 
Q=x-y
% 
R=x

% C = int (C) P*dx+Q*dy+R*dz
dx=diff(x)*dt
dy=diff(y)*dt
dz=diff(z)*dt

df=P*dx+Q*dy+R*dz
df=simplify(df)
C=int(df/dt,t,0,2*pi)
% pi*a*b

% II way
% Application of the Stokes formula
clear
syms x y z a b real
F=[x+z,x-y,x]
rot_F=curl(F,[x y z])
% [0 0 1]
f1=x^2/a^2+y^2/b^2-1

% n=k
% C = int int (S) n*rot_F*dS =
%   = int int (S) n*k*dS = int int (S) dx*dy

syms ro phi z;
x1=a*ro*cos(phi);
y1=b*ro*sin(phi);
z1=z;
J=a*b*ro;
f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% ro^2 - 1
C=int(int(J,ro,0,1),phi,0,2*pi)
% pi*a*b






