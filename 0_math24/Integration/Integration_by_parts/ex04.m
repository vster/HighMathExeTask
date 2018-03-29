% Интегрирование по частям
% int(u,v)=u*v-int(v,u)

syms x dx;
f=exp(x)*sin(x)
% I=int(f,x) - ?

u=exp(x);
dv=sin(x)*dx
du=exp(x)*dx
v=int(sin(x))
% -cos(x)
I=-exp(x)*cos(x)+int(cos(x)*exp(x),x)
% (exp(x)*(cos(x) + sin(x)))/2 - exp(x)*cos(x)

% применим формулу интегрирования еще раз
u=exp(x)
dv=cos(x)*dx
du=exp(x)*dx
v=int(cos(x))
% sin(x)
I=-exp(x)*cos(x)+exp(x)*sin(x)-int(exp(x)*sin(x),x)
I=factor(I)
% -(exp(x)*(cos(x) - sin(x)))/2
