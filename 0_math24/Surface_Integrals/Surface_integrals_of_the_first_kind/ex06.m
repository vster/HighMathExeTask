% Compute the integral 
% I = int_int (S) sqrt(1+x^2+y^2)*dS
% the surface S is given parametrically in the form 
% r (u, v) = u*cos(v)*i + u*sin(v)*j + v*k, 
% 0<=u<=2, 0<=v<=pi.

syms x y z real;
f1=sqrt(1+x^2+y^2)

syms u v real;
r=[u*cos(v),u*sin(v),v]
x1=u*cos(v)
y1=u*sin(v)
z1=v

dru=diff(r,u)
% [ cos(v), sin(v), 0]
drv=diff(r,v)
% [ -u*sin(v), u*cos(v), 1]

J=norm(cross(dru,drv))
J=simplify(J)
% (u^2 + 1)^(1/2)

f3=subs(f1,[x y z],[x1 y1 z1])
f3=simplify(f3)
% (u^2 + 1)^(1/2)

I=int(int(f3*J,u,0,2),v,0,pi)
% (14*pi)/3

