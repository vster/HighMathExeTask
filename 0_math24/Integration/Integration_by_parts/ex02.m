% Интегрирование по частям
% d(u*v)=u*dv*v*du
% uv=int(u,v)+int(v,u)
% int(u,v)=u*v-int(v,u)

syms x dx;
f=log(x)
% I=int(f) - ? 
u=log(x)
dv=dx;
du=1/x*dx
v=x;
I=log(x)*x-int(x*1/x,x)
% x*log(x) - x