% Интегрирование по частям
% d(u*v)=u*dv*v*du
% uv=int(u,v)+int(v,u)
% int(u,v)=u*v-int(v,u)

syms x dx;
f=x*sin(3*x-2)
% int(f,x) - ?
u=x;
du=dx;
dv=sin(3*x-2)*dx
v=int(sin(3*x-2),x)
% v=-cos(3*x - 2)/3
I=u*v-int(v,x)  % du=dx
% I=sin(3*x - 2)/9 - (x*cos(3*x - 2))/3
