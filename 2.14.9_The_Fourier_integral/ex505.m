% Find the Fourier transform of the function
pi1=pi
syms x z pi;
f(x)=piecewise(x<-1,0,-1<=x<0,-exp(x),0<=x<=1,exp(-x),x>1,0)

syms u;
F(z)=1/sqrt(2*pi)*int(f(u)*exp(1i*z*u),u,-inf,+inf)
F(z)=simplify(F(z))
%
pretty(F(z))