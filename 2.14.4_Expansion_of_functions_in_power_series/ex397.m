% Expand in series in powers of x the following function.

clear
syms x y x1 y1;
f(x,y)=x^3-2*y^3+3*x*y
P=[2 1]

f(x1,y1)=subs(f,[x y],[x1 y1])
x0=2
y0=1
f0=subs(f(x1,y1),[x1 y1],[x0 y0])
ts=f0
term=f(x1,y1)
for n=1:2
    dtermx=diff(term,x1);
    dtermy=diff(term,y1);
    term=(dtermx*(x-x0)+dtermy*(y-y0))/n;
    term0=subs(term,[x1 y1],[x0 y0]);
    ts=ts+term0;
end
disp(ts)
% 15*x + ((x - 2)*(12*x + 3*y - 27))/2 + ((y - 1)*(3*x - 12*y + 6))/2 - 18
ts2=expand(ts)
% 6*x^2 + 3*x*y - 12*x - 6*y^2 + 6*y + 6

fmesh(f)
hold on
fmesh(ts2)
hold off