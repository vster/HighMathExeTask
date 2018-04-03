% Вычисление объема тела
% V=int int f(x,y)*dx*dy

% z=1-x^2-y^2
% y=x
% y=x*sqrt(3)
% z=0

syms ro teta
x=ro*cos(teta)
y=ro*sin(teta)

z=1-x^2-y^2
z=simplify(z)

% tan(teta1)=1 => teta1=pi/4
% tan(teta2)=sqrt(3) => teta2=pi/3

V=int(int(z*ro,ro,0,1),teta,pi/4,pi/3)
% pi/48