% Expand the Maclaurin series function
% f(x,y)=cos(x)*sinh(y) 
% to third-order terms.

clear
syms x y x1 y1;
f(x,y)=cos(x)*sinh(y)

f(x1,y1)=subs(f,[x y],[x1 y1])
x0=0
y0=0
f0=subs(f(x1,y1),[x1 y1],[x0 y0])
ts=f0
term=f(x1,y1)
for n=1:3
    dtermx=diff(term,x1)
    dtermy=diff(term,y1)
    term=(dtermx*(x-x0)+dtermy*(y-y0))/n
    term0=subs(term,[x1 y1],[x0 y0])
    ts=ts+term0
end
ts2=expand(ts)
% y - (x^2*y)/2 + y^3/6