% Calculated by the formula Moivre expression
% (cos(2grad)+i*sin(2grad)^45

phi=2*pi/180
n=45

% (cos(phi)+i*sin(phi))^n = cos(n*phi)+i*sin(n*phi)

z1=(cos(phi)+1i*sin(phi))^n
% 0.0000 + 1.0000i
z2=cos(n*phi)+1i*sin(n*phi)
% 0.0000 + 1.0000i