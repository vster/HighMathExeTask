syms t dt
v=exp(2*t)
dv=simplify(diff(v))*dt
d2v=simplify(diff(v,2))*dt^2
d3v=simplify(diff(v,3))*dt^3