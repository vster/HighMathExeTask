syms x;
f=(2*x+1)^20
% 2*x+1=t
% 2*dx=dt
% dt=1/2*dx

syms t;
x=1/2*(t-1)
dx=diff(x)
% 1/2
f=(2*x+1)^20
% f=t^20
I=int(f*dx)
% t^21/42

syms x;
t=2*x+1
I=t^21/42
% (2*x + 1)^21/42