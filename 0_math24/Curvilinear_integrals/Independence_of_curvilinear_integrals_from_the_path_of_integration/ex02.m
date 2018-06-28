% Show that the curvilinear integral
% int(AB)(3*x^2*y+y)*dx+(x^3+x)*dy
% where the points A, B have coordinates A (1,2), B (4,5), 
% does not depend on the path of integration, 
% and find the value of this integral.

syms x y dx dy;
P=3*x^2*y+y
Q=x^3+x
A=[1,2]
B=[4,5]
r=[x y]

DPy=diff(P,y)
% 3*x^2 + 1
DQx=diff(Q,x)
% 3*x^2 + 1
% DPy==DQx => field F=(3*x^2*y+y,x^3+x) is potential =>
%   then integral does not depend on the path of integration

du=int(P,x)*dx+int(Q,y)*dy
% dy*y*(x^3 + x) + dx*x*y*(x^2 + 1)
du=simplify(du)
% du=x*y*(dx + dy)*(x^2 + 1)
u=x*y*(x^2 + 1)
F=gradient(u,r)
F=simplify(F)
% [ y*(3*x^2 + 1); x^3 + x]

% I=int(AB)P*dx+Q*dy=u(B)-u(A)
I=subs(u,r,B)-subs(u,r,A)
% 336

v = -5:0.2:5;
[x1,y1] = meshgrid(v);
z = x1*y1*(x1^2 + 1);
[px,py] = gradient(z,.2,.2);

contour(v,v,z)
hold on
quiver(v,v,px,py)
hold off