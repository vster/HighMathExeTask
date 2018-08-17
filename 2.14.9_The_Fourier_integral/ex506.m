% Find the cosine and sine functions of the function
clear
syms x z;
f(x)=piecewise(-1<x<-0.5,-1, -0.5<x<0.5,0, 0.5<x<1,1)

% Cosine Fourier transform
fc(z)=sqrt(2/pi)*int(f(x)*cos(z*x),x,0,+inf)

% Sine Fourier transform
fs(z)=sqrt(2/pi)*int(f(x)*sin(z*x),x,0,+inf)
%
pretty(fs(z))

% Don't work((

