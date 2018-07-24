% Expand in series in powers of x the following function.

clear
syms x y x1 y1;
f(x,y)=x/y
P=[-1 1]

f(x1,y1)=subs(f,[x y],[x1 y1])
x0=-1
y0=1
f0=subs(f(x1,y1),[x1 y1],[x0 y0])
ts=f0
term=f(x1,y1)
for n=1:3
    dtermx=diff(term,x1)
    dtermy=diff(term,y1)
    term=(dtermx*(x-x0)+dtermy*(y-y0))/n
    term0=subs(term,[x1 y1],[x0 y0])
    ts=ts+term0;
end
disp(ts)
% x + y - ((x + 1)*(y - 1))/2 + ((x + 1)*(y - 1)^2)/3 - ((y - 1)*(x + 2*y - 1))/2 + (((x + 1)*(y - 1) + ((y - 1)*(2*x + 6*y - 4))/2)*(y - 1))/3 - 1
ts2=expand(ts)
% 3*x + 3*y - 3*x*y + x*y^2 - 3*y^2 + y^3 - 1

fmesh(f)
hold on
fmesh(ts2)
hold off