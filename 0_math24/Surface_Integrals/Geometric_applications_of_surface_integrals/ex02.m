% Find the area of the hemisphere of radius R.

syms R ksi teta real;
r=[R*cos(ksi)*sin(teta),R*sin(ksi)*sin(teta),R*cos(teta)]
% 0<=ksi<=2*pi, 0<=teta<=pi/2

dr_ksi=diff(r,ksi)
% [ -R*sin(ksi)*sin(teta), R*cos(ksi)*sin(teta), 0]
dr_teta=diff(r,teta)
% [ R*cos(ksi)*cos(teta), R*cos(teta)*sin(ksi), -R*sin(teta)]

v1=cross(dr_ksi,dr_teta)
v1=simplify(v1)
% [ -R^2*cos(ksi)*sin(teta)^2, -R^2*sin(ksi)*sin(teta)^2, -(R^2*sin(2*teta))/2]

dS=norm(v1)
dS=simplify(dS)
% R^2*abs(sin(teta))

A=int(int(dS,teta,0,pi/2),ksi,0,2*pi)
% 2*pi*R^2
