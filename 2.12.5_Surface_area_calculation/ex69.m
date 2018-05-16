syms y z;
% Calculate the area of a paraboloid
x=1-y^2-z^2
% cut by a cylinder
% y^2+z^2=1

dxy=diff(x,y)
dxz=diff(x,z)

fs=sqrt(1+dxy^2+dxz^2)
% (4*y^2 + 4*z^2 + 1)^(1/2)

syms ro teta;
y1=ro*cos(teta)
z1=ro*sin(teta)
fs=subs(fs,[y z],[y1 z1])
fs=simplify(fs)
% (4*ro^2 + 1)^(1/2)

S=int(int(fs*ro,ro,0,1),teta,0,2*pi)
% (pi*(5*5^(1/2) - 1))/6