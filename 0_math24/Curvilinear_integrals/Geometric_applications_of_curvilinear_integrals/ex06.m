% Find the length of the cardioid given in polar coordinates by the equation 
% r = 5 (1 + cos(teta))

syms teta real;
r=5*(1+cos(teta))

% L=int(alfa:beta)sqrt(r^2+diff(r,teta)^2)*d_teta

f=sqrt(r^2+diff(r,teta)^2)
f=simplify(f)
% 5*2^(1/2)*(cos(teta) + 1)^(1/2)
L=int(f,teta,0,2*pi)
% 40