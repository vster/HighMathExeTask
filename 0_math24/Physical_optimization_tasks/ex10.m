% Координаты автомбиля A в момент t равны (0,u*t)
% Координаты автомобиля B в момент t равны (b-v*t,0)
% d=sqrt(|OA|^2+|OB|^2)
syms b v u t;
d=sqrt((0-(b-v*t))^2+(u*t-0)^2)
% (t^2*u^2 + (b - t*v)^2)^(1/2)
dd=diff(d,t)
% (2*t*u^2 - 2*v*(b - t*v))/(2*(t^2*u^2 + (b - t*v)^2)^(1/2))
pretty(dd)

slv=solve(2*t*u^2 - 2*v*(b - t*v),t)
t1=slv
% (b*v)/(u^2 + v^2)
d_min=subs(d,t,t1)
% ((b^2*u^2)/(u^2 + v^2))^(1/2)
d_min=b*u/sqrt(u^2+v^2)