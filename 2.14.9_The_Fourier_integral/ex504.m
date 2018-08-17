% Find the Fourier transform of the function
pi1=pi
syms x z pi;
f(x)=piecewise(x<-pi1,0,-pi1<=x<=pi1,cos(x/2),x>pi1,0)

syms u;
F(z)=1/sqrt(2*pi)*int(f(u)*exp(1i*z*u),u,-inf,+inf)
F(z)=simplify(F(z))
% -(2^(1/2)*cos(pi*z))/(2*pi^(1/2)*(z^2 - 1/4))