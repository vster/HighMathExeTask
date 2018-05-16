syms x y;
% Area of part of the plane 
z=x
% which is enclosed inside the cylinder
% x^2+y^2=4
% above the plane
% z=0

fs=sqrt(1+diff(z,x)^2+diff(z,y)^2)
% 2^(1/2)

syms ro teta;
x=ro*cos(teta)
y=ro*sin(teta)
D=x^2+y^2-4
D=simplify(D)
% ro=2

S=int(int(fs*ro,ro,0,2),teta,-pi/2,pi/2)
% 2*pi*2^(1/2)