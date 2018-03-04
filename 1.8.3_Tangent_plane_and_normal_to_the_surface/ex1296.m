syms x y z;
F=x^2+2*y^2+3*z^2-11
P=x+y+z-1

DFx=diff(F,x)
DFy=diff(F,y)
DFz=diff(F,z)

s=solve(x==2*y,2*y==-3*z,F==0)
M1=[s.x(1),s.y(1),s.z(1)]
M2=[s.x(2),s.y(2),s.z(2)]

DFxM1=subs(DFx,[x y z],M1)
DFyM1=subs(DFy,[x y z],M1)
DFzM1=subs(DFz,[x y z],M1)

% Уравнение касательной плоскости
pk=DFxM1*(x-M1(1))+DFyM1*(y-M1(2))+DFzM1*(z-M1(3))
pk=simplify(pk)
pk=simplify(pk/(2*sqrt(6)))

pretty(pk)