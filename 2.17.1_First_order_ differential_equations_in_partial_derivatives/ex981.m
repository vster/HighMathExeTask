% dz/dx*sin(x)+dz/dy*sin(y)=sin(z)

% dx/sin(x)=dy/sin(y)=dz/sin(z)

% dx/sin(x)=dy/sin(y)
syms x y z
eqn1=int(1/sin(x),x)-int(1/sin(y),y)
% log(tan(x/2)) - log(tan(y/2))=log(C1)
% tan(y/2)/tan(x/2)=C1

% dx/sin(x)=dz/sin(z)
eqn2=int(1/sin(z),z)-int(1/sin(x),x)
% log(tan(z/2)) - log(tan(x/2))
% tan(z/2)/tan(x/2)=C2

% tan(z/2)=tan(x/2)*psi(tan(y/2)/tan(x/2))