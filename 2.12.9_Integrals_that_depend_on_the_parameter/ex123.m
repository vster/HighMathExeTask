syms x lam;
syms k;
assume(k,'integer')
assume(k>0)

I=int(exp(-k*x)*sin(lam*x)/x,x,0,inf)
% atan(lam/k)

assume(lam<0)
I1=int(sin(lam*x)/x,x,0,inf)
% -pi/2

assume(lam==0)
I1=int(sin(lam*x)/x,x,0,inf)
% 0

assume(lam>0)
I1=int(sin(lam*x)/x,x,0,inf)
% pi/2


