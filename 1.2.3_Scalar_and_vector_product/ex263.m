% площадь параллелограмма
syms a b;
v1=a+3*b
v2=3*a+b
an=1
bn=1
abu=30

vp=expand(v1*v2)
% Векторное произведение
vp=3*a^2+8*a*b+3*b^2
vp=subs(vp,a^2,0)
vp=subs(vp,b^2,0)
vp=subs(vp,a*b,sin(30*pi/180))