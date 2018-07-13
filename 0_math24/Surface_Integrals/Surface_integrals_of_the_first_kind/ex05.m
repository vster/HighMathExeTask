% Find the integral 
% I = int_int (S) dS/sqrt(x^2+y^2+z^2), 
% where S is the part of the cylindrical surface 
% specified parametrically in the form 
% r(u,v) = (a*cos(u), a*sin(u), v), 
% 0<=u<=2*pi, 0<=v<=H.

syms x y z H real;
f1=1/sqrt(x^2+y^2+z^2)

syms a u v real;
r=[a*cos(u),a*sin(u),v]
x1=a*cos(u)
y1=a*sin(u)
z1=v

dru=diff(r,u)
% [ -a*sin(u), a*cos(u), 0]
drv=diff(r,v)
% [ 0, 0, 1]

J=norm(cross(dru,drv))
J=simplify(dS)
% abs(a)
J=a

f3=subs(f1,[x y z],[x1 y1 z1])
f3=simplify(f3)
% 1/(a^2 + v^2)^(1/2)

% 0<=v<=H
% 0<=u<=2*pi
I=int(int(f3*J,v,0,H),u,0,2*pi)
% -2*pi*a*(log(a^2)/2 - log(H + (H^2 + a^2)^(1/2)))
% I=2*pi*a*(log(H + (H^2 + a^2)^(1/2)) - log(a))


