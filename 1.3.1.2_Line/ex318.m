% From the origin, drop the perpendicular to the line
% (x-2)/2 = (y-1)/3 = (z-3)/1

syms x y z;
% The canonical equations of the line
lc1=(x-2)/2
lc2=(y-1)/3
lc3=(z-3)/1
% Plane perpendicular to the given line
pl=2*x+3*y+z

% Parametric equations of this line
syms t;
x=2*t+2
y=3*t+1
z=t+3
LP1=[2*t+2,3*t+1,t+3]

t0=solve(2*(2*t+2)+3*(3*t+1)+1*(t+3)==0)
% -5/7
x0=subs(x,t,t0)
% 4/7
y0=subs(y,t,t0)
% -8/7
z0=subs(z,t,t0)
% 16/7

M=[x0,y0,z0]
%[ 4/7, -8/7, 16/7]

syms x y z;
R=[x,y,z]
LC2=R./M
% [ (7*x)/4, -(7*y)/8, (7*z)/16]
LC2=4/7*LC2
% [ x, -y/2, z/4]

