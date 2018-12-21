% Calculate 
% int(gamma)zt*dz
% where
% gamma: x=cos(t),y=sin(t)

syms x y dx dy
z=x+i*y
zt=z'
% x - y*1i
dz=dx*i*dy

% int(gamma)zt*dz=int(gamma)x*dx+y*dy+i*int(gamma)x*dy-y*dx
I1=0

syms t dt
x=cos(t)
y=sin(t)
dx=diff(x)*dt
dy=diff(y)*dt
df2=simplify(x*dy-y*dx)
% dt
I2=i*int(dt/dt,t,0,2*pi)
% pi*2i

% int(gamma)zt*dz=I1+I2=2*pi*i
