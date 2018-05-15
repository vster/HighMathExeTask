% Find the coordinates of the center of gravity of the arc of the cycloid
% x=t-sin(t),y=1-cos(t) (0<=t<=pi)

% Coordinates of the center of gravity
% xm=1/s * int (K) x ds
% ym=1/s * int (K) y ds

syms t;
x=t-sin(t)
y=1-cos(t)
ds=sqrt(diff(x)^2+diff(y)^2)
ds=simplify(ds)
ds=rewrite(ds,'sin')
% 2^(1/2)*(2*sin(t/2)^2)^(1/2)
ds=2*sin(t/2)

s=int(ds,t,0,pi)
% 4
xm=1/s*int(x*ds,t,0,pi)
% 4/3  (?) 8/3 - correct(?)
ym=1/s*int(y*ds,t,0,pi)
% 4/3
