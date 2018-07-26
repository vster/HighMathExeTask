% Calculate the surface area of the torus given 
% by the equation z^2 + (r-b)^2 = a^2 (0<=a<=b) in cylindrical coordinates.

clear
syms a b ksi phi real;
r=[(b+a*cos(ksi))*cos(phi),(b+a*cos(ksi))*sin(phi),a*sin(ksi)]

dr_phi=diff(r,phi)
% [ -sin(phi)*(b + a*cos(ksi)), cos(phi)*(b + a*cos(ksi)), 0]
dr_ksi=diff(r,ksi)
% [ -a*cos(phi)*sin(ksi), -a*sin(ksi)*sin(phi), a*cos(ksi)]

dS=norm(cross(dr_phi,dr_ksi))
dS=simplify(dS)
% abs(b + a*cos(ksi))*abs(a)
dS=a*(b+a*cos(ksi))

A=int(int(dS,ksi,0,2*pi),phi,0,2*pi)
% 4*a*b*pi^2