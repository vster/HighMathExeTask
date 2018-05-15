% Find the mass of an arc of a circle
% x=cos(t),y=sin(t) (0<=t<=pi)
% if the linear density at the point (x;y) is y
% gamma=f(x;y)=y

% M = int (K) f(x,y) ds

syms t dt;
x=cos(t)
y=sin(t)
ds=sqrt(diff(x)^2+diff(y)^2)
ds=simplify(ds)
% 1
M=int(y*ds,t,0,pi)
% 2
