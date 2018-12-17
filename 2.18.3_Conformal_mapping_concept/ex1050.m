% w=exp(phi*i)*z
syms z 
syms phi real
w=exp(phi*i)*z

syms x y real
w=expand(subs(w,z,x+i*y))
% x*exp(phi*1i) + y*exp(phi*1i)*1i
u=real(w)
% x*cos(phi) - y*sin(phi)
v=imag(w)
% y*cos(phi) + x*sin(phi)

% x=0
u1=subs(u,x,0)
% -y*sin(phi)
v1=subs(v,x,0)
% y*cos(phi)
% u=-tan(phi)*v

% y=0
u1=subs(u,y,0)
% x*cos(phi)
v1=subs(v,y,0)
% x*sin(phi)
% v=tan(phi)*u
