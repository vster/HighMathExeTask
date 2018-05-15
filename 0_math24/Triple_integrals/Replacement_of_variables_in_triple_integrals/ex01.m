% Find the volume of the domain U, given by inequalities
% 0<=z<=2, 0<=y+z<=5, 0<=x+y+z<=10

syms x y z;
u=x+y+z
v=y+z
w=z
% U1: 0<=u<=10, 0<=v<=5, 0<=w<=2

% V = int int int (U) dx dy dz = int int int (U1) |I(u,v,w)| du dv dw

% We compute the Jacobian of this transformation
% d(u,v,w)/d(x,y,z) = ?
I1=[diff(u,x) diff(u,y) diff(u,z); diff(v,x) diff(v,y) diff(v,z); diff(w,x) diff(w,y) diff(w,z)]
dI1=det(I1)

I=I1^(-1)
dI=det(I)

syms u v w;
V=int(int(int(dI,w,0,2),v,0,5),u,0,10)
% 100