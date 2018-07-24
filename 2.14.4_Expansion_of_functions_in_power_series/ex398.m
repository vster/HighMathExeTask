% Expand in series in powers of x the following function.

clear
syms x y x1 y1;
f(x,y)=4*x^3-x^2+2*x*y-y^2+5*x+y-8
P=[1 -1]

f(x1,y1)=subs(f,[x y],[x1 y1])
x0=1
y0=-1
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
% 13*x + 5*y + ((x - 1)*(22*x + 2*y - 20))/2 - ((y + 1)*(2*y - 2*x + 4))/2 - 12
ts2=expand(ts)
% 11*x^2 + 2*x*y - 7*x - y^2 + y - 4

fmesh(f)
hold on
fmesh(ts2)
hold off