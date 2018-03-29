% Интегрирование по частям
% int(u,v)=u*v-int(v,u)

syms x dx;
f=asin(x)
% I=int(f,x) - ?

u=asin(x)
dv=dx;
du=diff(u,x)
% 1/(1 - x^2)^(1/2)
v=x;
I=x*asin(x)-int(x/(1 - x^2)^(1/2),x)
% x*asin(x) + (1 - x^2)^(1/2)
I1=x*asin(x)

% 2-й способ
% I2=int(x/(1 - x^2)^(1/2),x) - ?
% w=1-x^2
% dw=-2*x*dx
% x*dx=-dw/2
syms w;
I2=int((-1/2)/sqrt(w),w)
I2=subs(I2,w,1-x^2)
I=I1-I2
% x*asin(x) + (1 - x^2)^(1/2)
