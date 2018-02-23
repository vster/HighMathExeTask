syms t;
x(t)=exp(t)*sin(t)
y(t)=exp(t)*cos(t)
t0=1

%ezplot(x,y)

Dxt=diff(x,t)
D2xt=diff(x,2)
Dyt=diff(y,t)
D2yt=diff(y,2)

Dxt0=subs(Dxt,t,t0)
D2xt0=subs(D2xt,t,t0)
Dyt0=subs(Dyt,t,t0)
D2yt0=subs(D2yt,t,t0)

k=abs(Dxt0*D2yt0-Dyt0*D2xt0)/(Dxt0^2+Dyt0^2)^(3/2)
k=simplify(k)
pretty(k)
