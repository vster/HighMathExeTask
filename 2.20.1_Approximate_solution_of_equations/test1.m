clear
syms x f(x) x0

n=1
ts = taylor(f, x, 'Order', n+1,'ExpansionPoint', x0)
% f(x0) + (x - x0)*diff(f(x0), x0)
ksi=expand(solve(ts,x))
% x0 - f(x0)/diff(f(x0), x0)

n=2
ts = taylor(f, x, 'Order', n+1,'ExpansionPoint', x0)
% 
ksi=expand(solve(ts,x))

n=3
ts = taylor(f, x, 'Order', n+1,'ExpansionPoint', x0)
% 
ksi=expand(solve(ts,x))