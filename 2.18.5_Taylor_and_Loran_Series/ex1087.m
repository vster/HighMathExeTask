clear
syms z n
a=0
f(z)=piecewise(z~=0,(1-cos(z))/z^2,z==0,0.5)

sm=expand((1-taylor(cos(z),z, 'Order', 10))/z^2)
% - z^6/40320 + z^4/720 - z^2/24 + 1/2