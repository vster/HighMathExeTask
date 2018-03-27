syms x dx;
% f=sin(2*x)/sqrt(1+cos(x)^2)
u=1+cos(x)^2
du=diff(u)*dx
du=simplify(du)
% du = -dx*sin(2*x)
% df=sin(2*x)*dx/sqrt(1+cos(x)^2)=(-du)/sqrt(u)

syms u;
I=int(-1/sqrt(u))
% -2*u^(1/2)
I=subs(I,u,1+cos(x)^2)
% -2*(cos(x)^2 + 1)^(1/2)
