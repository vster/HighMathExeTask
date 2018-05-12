% Найти коорд ЦТ однородной дуги кривой
% x=exp(t)*cos(t),y=exp(t)*sin(t),z=exp(t),(-inf<=t<=0)

% Координаты ЦТ
% xm=1/s * int (K) x ds
% ym=1/s * int (K) y ds
% zm=1/s * int (K) z ds

syms t;
x=exp(t)*cos(t)
y=exp(t)*sin(t)
z=exp(t)
ds=sqrt(diff(x)^2+diff(y)^2+diff(z)^2)
ds=simplify(ds)
ds=3^(1/2)*exp(t)

s=int(ds,t,-inf,0)
% 3^(1/2)
xm=1/s*int(x*ds,t,-inf,0)
% 2/5
ym=1/s*int(y*ds,t,-inf,0)
% -1/5
zm=1/s*int(z*ds,t,-inf,0)
% 1/2
