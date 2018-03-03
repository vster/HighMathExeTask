syms t;
s=t^5/5+2/pi*sin(pi*t/8)
t0=2
% Определить скорость движения в точке t0

dst=diff(s)
dst0=subs(dst,t,t0)
vpa(dst0)
