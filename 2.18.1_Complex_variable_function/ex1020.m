% w=2*z^3

syms z z0
d=z^3-z0^3
factor(d)
% [ z - z0, z^2 + z*z0 + z0^2]
% Exist M, that |z|<M,|z0|<M
% |z^3-z0^3|=|z-z0|*|z^2 + z*z0 + z0^2|<|z-z0|*3*M^2
% Take delta<eps/(3*M^2)
% From |z-z0|<delta follows, that
% |z^3-z0^3|<3*M^2*delta<eps
% So 
% lim(z->z0)2*z^3=2*z0^3
% w=2*z^3 is continuous function