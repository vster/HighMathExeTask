syms x dx;
% f=cot(3*x+5)=cos(3*x+5)/sin(3*x+5)
u=sin(3*x+5)
du=diff(u)
% du=3*cos(3*x + 5)*dx
% cos(3*x + 5)*dx=du/3

% df=cos(3*x+5)/sin(3*x+5)*dx=du/3/u
syms u;
I=int(1/(3*u))
% log(u)/3

I=subs(I,u,sin(3*x+5))
% log(sin(3*x + 5))/3