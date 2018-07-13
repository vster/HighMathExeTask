% Calculate the surface integral of the vector field 
% F(x,y,z) = (x,-1,z) over the interior oriented surface S 
% given by the equation z = x*cos(y), where
% 0<=x<=1, pi/4<=y<=pi/3.

% int_int(S)F*dS = int_int (D(x,y)) F*(diff(z,x)*i+diff(z,y)*j-k)*dx*dy

syms x y z real;
F=[x,-1,z]
z1=x*cos(y)

dS=[diff(z1,x),diff(z1,y),-1]
% [ cos(y), -x*sin(y), -1]

F=subs(F,z,z1)
% [ x, -1, x*cos(y)]

f2=dot(F,dS)
% x*sin(y)

I=int(int(f2,y,pi/4,pi/3),x,0,1)
% 2^(1/2)/4 - 1/4
