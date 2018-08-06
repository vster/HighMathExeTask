% Using the Moivre formula, express 
% cos(5*phi) and sin(5*phi) 
% through cos(phi) and sin(phi)

syms phi;
z=(cos(phi)+1i*sin(phi))^5

z1=expand(z)
% cos(phi)^5 + sin(phi)^5*1i + 5*cos(phi)*sin(phi)^4 + cos(phi)^4*sin(phi)*5i - cos(phi)^2*sin(phi)^3*10i - 10*cos(phi)^3*sin(phi)^2

z2=simplify(z1)
% cos(5*phi) + sin(5*phi)*1i

% real part of z1
% cos(5*phi) = cos(phi)^5 + 5*cos(phi)*sin(phi)^4 - 10*cos(phi)^3*sin(phi)^2

% image part of z1
% sin(5*phi) = sin(phi)^5 + 5*cos(phi)^4*sin(phi) - 10*cos(phi)^2*sin(phi)^3