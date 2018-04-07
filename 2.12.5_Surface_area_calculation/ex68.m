% Вычислить площадь поверхности цилиндра 
% x^2=2*z
% отсеченной плоскостями
% x-2*y=0
% y=2*x
% x=2*sqrt(2)

syms x y;
z=x^2/2
dzx=diff(z,x)
dzy=diff(z,y)
fs=sqrt(1+dzx^2+dzy^2)
% (x^2 + 1)^(1/2)

y1=x/2
y2=2*x

S=int(int(fs,y,x/2,2*x),x,0,2*sqrt(2))
% 13
