% Интегрирование по частям
% int(u,v)=u*v-int(v,u)

syms x dx n;
f=sin(x)^n
% I=int(f,x) - ?
u=sin(x)^(n-1)
dv=sin(x)*dx
du=diff(u,x)
% cos(x)*sin(x)^(n - 2)*(n - 1)
v=int(sin(x),x)
% -cos(x)
I=-cos(x)*sin(x)^(n-1)-int((-cos(x)*cos(x)*sin(x)^(n - 2)*(n - 1)),x)

% не закончил !
% Запутался!