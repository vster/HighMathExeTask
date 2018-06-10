% Find the divergence of a vector field
% F=x^2*i+y^2*j+z^2*k

syms x y z;
r=[x,y,z]
F=[x^2,y^2,z^2]

div_F=divergence(F,r)
% 2*x + 2*y + 2*z
div_F=factor(div_F)
% 2*(x + y + z)
