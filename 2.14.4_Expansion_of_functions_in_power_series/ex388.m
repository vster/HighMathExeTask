% Expand Taylor's function 
% f(x,y)=x^2*log(y)
% in a neighborhood of a point P0(1,1) to second-order terms.

syms x y real;
f(x,y)=x^2*log(y)
r=[x y]
P0=[1 1]
x0=1
y0=1

dfx=diff(f,x)
% 2*x*log(y)
dfy=diff(f,y)
% x^2/y
dfx2=diff(dfx,x)
% 2*log(y)
dfxy=diff(dfx,y)
% (2*x)/y
dfy2=diff(dfy,y)
% -x^2/y^2

f0=subs(f,r,P0)
% 0
dfx0=subs(dfx,r,P0)
% 0
dfy0=subs(dfy,r,P0)
% 1
dfx2_0=subs(dfx2,r,P0)
% 0
dfxy_0=subs(dfxy,r,P0)
% 2
dfy2_0=subs(dfy2,r,P0)
% -1

ts1=f0+1/factorial(1)*((x-x0)*dfx0+(y-y0)*dfy0) + ...
    1/factorial(2)*((x-x0)^2*dfx2_0+...
    2*(x-x0)*(y-y0)*dfxy_0+(y-y0)^2*dfy2_0)
% y - (y - 1)^2/2 + (2*x - 2)*(y - 1) - 1
ts1=expand(ts1)
% - y^2/2 + 2*x*y - 2*x + 1/2

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
ts2=expand(ts)
% - y^2/2 + 2*x*y - 2*x + 1/2