% Using the Moivre formula, express 
% cos(4*phi) and sin(4*phi) 
% through cos(phi) and sin(phi)

syms phi;
z=(cos(phi)+1i*sin(phi))^4

z1=expand(z)
% cos(phi)^4 + sin(phi)^4 - cos(phi)*sin(phi)^3*4i + cos(phi)^3*sin(phi)*4i - 6*cos(phi)^2*sin(phi)^2

z2=simplify(z1)
% cos(4*phi) + sin(4*phi)*1i

% real part of z1
% cos(4*phi) =  cos(phi)^4 + sin(phi)^4 - 6*cos(phi)^2*sin(phi)^2

% image part of z1
% sin(4*phi) = - 4*cos(phi)*sin(phi)^3 + 4*cos(phi)^3*sin(phi)