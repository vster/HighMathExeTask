syms x;
I1=int(1/sqrt(1-x^4),x,0,1)
% (2^(1/2)*pi^(3/2))/(4*gamma(3/4)^2)
I2=int(x^2/sqrt(1-x^4),x,0,1)
% (2^(1/2)*gamma(3/4)^2)/(2*pi^(1/2))
I=I1*I2
% pi/4