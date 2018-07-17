% Estimate the flux of the vector field 
% F(x,y,z) = - y*i + x*j - z*k through the inner side of the unit sphere 
% x^2 + y^2 + z^2 = 1.

syms x y z real;
F=[-y x -z]
r=[x y z]

syms ro phi teta;
x1=cos(phi)*sin(teta)
y1=sin(phi)*sin(teta)
z1=cos(teta)
J=sin(teta)

r=subs(r,[x y z],[x1 y1 z1])
% [ cos(phi)*sin(teta), sin(phi)*sin(teta), cos(teta)]
F=subs(F,[x y z],[x1 y1 z1])
% [ -sin(phi)*sin(teta), cos(phi)*sin(teta), -cos(teta)]

dr_phi=diff(r,phi)
% [ -sin(phi)*sin(teta), cos(phi)*sin(teta), 0]
dr_teta=diff(r,teta)
% [ cos(phi)*cos(teta), cos(teta)*sin(phi), -sin(teta)]

dS=cross(dr_phi,dr_teta)
dS=simplify(dS)
% [ -cos(phi)*sin(teta)^2, -sin(phi)*sin(teta)^2, -sin(2*teta)/2]

f=dot(F,dS)
% (cos(conj(teta))*sin(2*teta))/2

I=int(int(f,teta,0,pi),phi,0,2*pi)
% (4*pi)/3