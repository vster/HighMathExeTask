% Calculate int(A:B)f(z)dz
% where
% f(z)=(y+1)-x*i
% AB: zA=1,zB=-i

syms x y real
u=y+1
v=-x
% int(G)f(z)dz=int(G)u(x,y)dx-v(x,y)dy+int(G)v(x,y)dx+u(x,y)dy
% I=int(u,x)-int(v,y)+1i*int(v,x,0,1)+1i*int(u,y,0,-1)

syms z
f(z)=1-i*z
I=int(f(z),z,1,-i)
% -1

