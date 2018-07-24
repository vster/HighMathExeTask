% Expand in series in powers of x the following function.

clear
syms x y x1 y1;
f(x,y)=5*x^2+9*y^2-2*x+3*y-5
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
% 8*x - 15*y + ((10*x - 10)*(x - 1))/2 + ((18*y + 18)*(y + 1))/2 - 19
ts2=expand(ts)
% 5*x^2 - 2*x + 9*y^2 + 3*y - 5

fmesh(f)
hold on
fmesh(ts2)
hold off