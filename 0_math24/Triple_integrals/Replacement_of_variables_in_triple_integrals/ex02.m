% Find the volume of an inclined parallelepiped given by inequalities
% 0<=2x-3y+z<=5, 1<=x+2y<=4, -3<=3-z<=6

syms x y z;
u=2*x-3*y+z
v=x+2*y
w=x-z

% Compute the Jacobian of this transformation
% I1=d(u,v,w)/d(x,y,z)
I1=[diff(u,x) diff(u,y) diff(u,z); diff(v,x) diff(v,y) diff(v,z); diff(w,x) diff(w,y) diff(w,z)]
dI1=det(I1)

I=I1^(-1)
dI=norm(det(I))

syms u v w;
V=int(int(int(dI,w,-3,6),v,1,4),u,0,5)
% 15

