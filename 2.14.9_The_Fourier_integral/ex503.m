% Find the Fourier transform of the function
syms x z;
f(x)=piecewise(x<-1,0,-1<=x<=-0.5,x+1,-0.5<x<0.5,1,0.5<=x<=1,-x+1,x>1,0)
fplot(f)

syms u;
F(z)=1/sqrt(2*pi)*int(f(u)*exp(1i*z*u),u,-inf,+inf)
F(z)=simplify(F(z))
% (2^(1/2)*(4*cos(z/2) + 2*z*sin(z/2) - 8*cos(z/2)^2 + 4))/(4*z^2*pi^(1/2))
