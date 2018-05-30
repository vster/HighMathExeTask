% Find the divergence of a vector field
% F=x^2*i+y^2*j+z^2*k

syms x y z;
P=x^2
Q=y^2
R=z^2

div_F=diff(P,x)+diff(Q,y)+diff(R,z)
% 2*x + 2*y + 2*z
div_F=factor(div_F)
% 2*(x + y + z)
