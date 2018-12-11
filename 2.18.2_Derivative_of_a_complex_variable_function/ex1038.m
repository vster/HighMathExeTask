clear
syms x y a real
f=a*(x-y*i)
u=a*x
v=-a*y

dux=diff(u,x)
% a
duy=diff(u,y)
% 0
dvx=diff(v,x)
% 0
dvy=diff(v,y)
% -a
% dux=dvy => a=-a => a=0
% duy=-dvx - corrcet