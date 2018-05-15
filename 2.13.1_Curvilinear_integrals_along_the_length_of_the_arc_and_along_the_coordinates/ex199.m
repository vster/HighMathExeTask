% first coil of the helix
% x=cos(t),y=sin(t),z=t
% If the density at each point is equal to the radius vector of this point
% gamma=sqrt(x^2+y^2+z^2)

syms t;
x=cos(t)
y=sin(t)
z=t
gamma=sqrt(x^2+y^2+z^2)

f=gamma*sqrt(diff(x)^2+diff(y)^2+diff(z)^2)
f=simplify(f)
% 2^(1/2)*(t^2 + 1)^(1/2)
M=int(f,t,0,2*pi)
M=simplify(M)
% (2^(1/2)*asinh(2*pi))/2 + 2^(1/2)*pi*(4*pi^2 + 1)^(1/2)

