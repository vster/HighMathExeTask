syms alfa t v0 g;

vx0=v0*cos(alfa)
vy0=v0*sin(alfa)

x=vx0*t
y=vy0*t-g*t^2/2

slv=solve(y,t)
t1=slv(2)
% (2*v0*sin(alfa))/g

L=v0*cos(alfa)*t1
L=simplify(L)
% (v0^2*sin(2*alfa))/g

alfa1=solve(sin(2*alfa)==1)
% pi/4

d_L=diff(L,alfa)
% (2*v0^2*cos(2*alfa))/g

alfa2=solve(cos(2*alfa)==0)
% pi/4

L_max=subs(L,alfa,alfa1)
% v0^2/g