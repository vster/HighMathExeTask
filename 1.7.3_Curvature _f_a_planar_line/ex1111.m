syms t a;
x=a*(t-sin(t))
y=a*(1-cos(t))

dxt=diff(x,t)
d2xt=diff(x,t,2)
dyt=diff(y,t)
d2yt=diff(y,t,2)

k=simplify(abs((dxt*d2yt-dyt*d2xt)/(dxt^2+dyt^2)^(3/2)))