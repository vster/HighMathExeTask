syms x dx;
% f=(x+1)/(x^2+2*x-5)
u=x^2+2*x-5
du=diff(u)
du=(2*x + 2)*dx
% (x+1)*dx=du/2
syms u du;
f=(du/2)/u
I=int(1/(2*u))
% log(u)/2

u=x^2+2*x-5
I=log(x^2+2*x-5)