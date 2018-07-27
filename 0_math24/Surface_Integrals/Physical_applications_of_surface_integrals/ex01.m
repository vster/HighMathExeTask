% Find the mass of the cylindrical shell specified parametrically 
% in the form 
% r(u,v) = a*cos(u)*i + a*sin(u)*j + v*k, 
% where 0<=u<=2*pi, 0<=v<=H. 
% The density of the shell is determined by the function 
% mu(x, y, z) = z^2*(x^2 + y^2).

% m = int_int (S) mu(x,y) dS
% dS = | cross(dr/du,dr/dv) | dudv

syms x y z real;
mu=z^2*(x^2+y^2)

syms u v a H real;
r=[a*cos(u),a*sin(u),v]
x1=a*cos(u)
y1=a*sin(u)
z1=v

dru=diff(r,u)
% [ -a*sin(u), a*cos(u), 0]
drv=diff(r,v)
% [ 0, 0, 1]

dS=norm(cross(dru,drv))
dS=simplify(dS)
% abs(a)
dS=a

mu=subs(mu,[x y z],[x1 y1 z1])
mu=simplify(mu)
% a^2*v^2

m=int(int(mu*dS,v,0,H),u,0,2*pi)
% (2*pi*H^3*a^3)/3

