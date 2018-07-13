% Find the integral of the vector field F(x,y,z) = (y,x,z) 
% over the surface S given in the parametric form by the vector 
% r(u,v) = (cos(v),sin(v),u), 0<=u<=2, pi/2<=v<=pi.

syms x y z real;
r=[x y z]
F=[y,x,z]

syms u v real;
r1=[cos(v),sin(v),u]
x1=cos(v)
y1=sin(v)
z1=u

dru=diff(r1,u)
% [ 0, 0, 1]
drv=diff(r1,v)
% [ -sin(v), cos(v), 0]
dS=cross(dru,drv)
% [ -cos(v), -sin(v), 0]

F=subs(F,[x y z],[x1 y1 z1])
% [ sin(v), cos(v), u]

f2=dot(F,dS)
% -2*cos(v)*sin(v)

I=int(int(f2,v,pi/2,pi),u,0,2)
% 2