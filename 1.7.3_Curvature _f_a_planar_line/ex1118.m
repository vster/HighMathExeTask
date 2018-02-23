syms t;

x=t*sin(t)+cos(t)
y=t*sin(t)-sin(t)

dxt=diff(x,t)
d2xt=diff(x,t,2)
dyt=diff(y,t)
d2yt=diff(y,t,2)

ksi=x-dyt*(1+dyt^2)/d2yt
eta=y+(1+dyt^2)/d2yt

ksi=simplify(ksi)
pretty(ksi)
eta=simplify(eta)
pretty(eta)

%ezplot(x,y)
%hold on
%ezplot(ksi,eta)
%hold off