% Expand in series in powers of x the following function.

clear
syms x y x1 y1;
f(x,y)=x*exp(-y)
P=[1 0]

f(x1,y1)=subs(f,[x y],[x1 y1])
x0=1
y0=0
f0=subs(f(x1,y1),[x1 y1],[x0 y0])
ts=f0
term=f(x1,y1)
for n=1:2
    dtermx=diff(term,x1)
    dtermy=diff(term,y1)
    term=(dtermx*(x-x0)+dtermy*(y-y0))/n
    term0=subs(term,[x1 y1],[x0 y0])
    ts=ts+term0;
end
disp(ts)
% x - y + (y*(y - x + 1))/2 - (y*(x - 1))/2
ts2=expand(ts)
% y^2/2 - x*y + x

fmesh(f)
hold on
fmesh(ts2)
hold off