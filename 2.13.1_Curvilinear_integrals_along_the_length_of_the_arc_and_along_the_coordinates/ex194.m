% Найти массу дуги окружности
% x=cos(t),y=sin(t) (0<=t<=pi)
% если линейная плотность в точке (x;y) равна y
% gamma=f(x;y)=y

% M = int (K) f(x,y) ds

syms t dt;
x=cos(t)
y=sin(t)
ds=sqrt(diff(x)^2+diff(y)^2)*dt
ds=simplify(ds)
% dt
M=int(y,t,0,pi)
% 2
