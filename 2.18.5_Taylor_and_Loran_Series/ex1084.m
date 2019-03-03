clear
syms z
f(z)=piecewise(z~=0,(sinh(z)-z)/z^5,z==0,0)

ls(z)=expand((taylor(sinh(z),z, 'Order', 10)-z)/z^5)
% 1/(6*z^2) + z^2/5040 + z^4/362880 + 1/120