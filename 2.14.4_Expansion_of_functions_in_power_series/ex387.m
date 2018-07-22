% Expand the Taylor function
% f(x,y)=x^2-x*y+2*y^2-3*x+4*y+8
% in the neighborhood of a point P0(-3,1).

clear
syms x y real;
f(x,y)=x^2-x*y+2*y^2-3*x+4*y+8
r=[x y]
P0=[-3 1]
x0=-3
y0=1

dfx=diff(f,x)
% 2*x - y - 3
dfy=diff(f,y)
% 4*y - x + 4
dfx2=diff(dfx,x)
% 2
dfxy=diff(dfx,y)
% -1
dfy2=diff(dfy,y)
% 4

f0=subs(f,r,P0)
% 35
dfx0=subs(dfx,r,P0)
% -10
dfy0=subs(dfy,r,P0)
% 11
dfx2_0=subs(dfx2,r,P0)
% 2
dfxy_0=subs(dfxy,r,P0)
% -1
dfy2_0=subs(dfy2,r,P0)
% 4

ts1=f0+1/factorial(1)*((x-x0)*dfx0+(y-y0)*dfy0) + ...
    1/factorial(2)*((x-x0)^2*dfx2_0+...
    2*(x-x0)*(y-y0)*dfxy_0+(y-y0)^2*dfy2_0)
% 11*y - 10*x + (x + 3)^2 + 2*(y - 1)^2 - ((2*x + 6)*(y - 1))/2 - 6
ts1=simplify(ts1)
% x^2 - x*y - 3*x + 2*y^2 + 4*y + 8

% New algorithm
syms x1 y1;
f(x1,y1)=subs(f,[x y],[x1 y1])
f0=subs(f(x1,y1),[x1 y1],[x0 y0])
ts=f0
term=f(x1,y1)
for n=1:2
    dtermx=diff(term,x1)
    dtermy=diff(term,y1)
    term=(dtermx*(x-x0)+dtermy*(y-y0))/n
    term0=subs(term,[x1 y1],[x0 y0])
    ts=ts+term0
end
ts2=simplify(ts)
% x^2 - x*y - 3*x + 2*y^2 + 4*y + 8

