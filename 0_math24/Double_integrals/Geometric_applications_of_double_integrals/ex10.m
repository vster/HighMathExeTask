% Calculate the area of the sphere of radius a.

% x^2+y^2+y^2=a^2 => z=sqrt(a^2-x^2-y^2)

% Hemisphere area
% S1= int int (R) sqrt(1+diff(z,x)^2+diff(z,y)^2) dx dy

syms x y z a real;
z1=sqrt(a^2-x^2-y^2)
dzx=diff(z1,x)
% -x/(a^2 - x^2 - y^2)^(1/2)
dzx=-x/z

dzy=diff(z1,y)
% -y/(a^2 - x^2 - y^2)^(1/2)
dzy=-y/z

% f=sqrt(1+diff(z,x)^2+diff(z,y)^2)
f=sqrt(1+dzx^2+dzy^2)
f=simplify(f)
% (sign(z)*(x^2 + y^2 + z^2)^(1/2))/z
f=a/z
f=a/sqrt(a^2-x^2-y^2)

syms ro teta;
x1=ro*cos(teta);
y1=ro*sin(teta);
J=ro

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% a/(a^2 - ro^2)^(1/2)

S1=int(int(f1*J,ro,0,a),teta,0,2*pi)
% 2*pi*a^2

S=2*S1
% 4*pi*a^2