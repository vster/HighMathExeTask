syms z
w=z^2
% 0<=x<=1,0<=y<=1
syms x y real
w1=expand(subs(w,z,x+i*y))
% x^2 + x*y*2i - y^2
u=real(w1)
% x^2 - y^2
v=imag(w1)
% 2*x*y

% x=0,y=0
u1=subs(u,[x y],[0 0])
v1=subs(v,[x y],[0 0])
% u=0,v=0

% x=0,y=1
u1=subs(u,[x y],[0 1])
v1=subs(v,[x y],[0 1])
% u=-1,v=0

% x=1,y=0
u1=subs(u,[x y],[1 0])
v1=subs(v,[x y],[1 0])
% u=1,v=0

% x=1,y=1
u1=subs(u,[x y],[1 1])
v1=subs(v,[x y],[1 1])
% u=0,v=2

% OB
% y=0 => u=x^2,v=0 => v=0,u>=0

% OA
% x=0 => u=-y^2,v=0 => v=0,u<=0

% AC
% y=1 => u=x^2-1,v=2*x => u=v^2/4-1

% BC
% x=1 => u=1-y^2,v=2*y => u=1-v^2/4

% and so we get curvilinear triangle
% v=0,u=v^2/4-1,u=1-v^2/4

