syms t;
x(t)=exp(t)*sin(t)
y(t)=exp(t)*cos(t)
t=1

%ezplot(x,y)

Dxt=diff(x,t)
D2xt=diff(x,2)
Dyt=diff(y,t)
D2yt=diff(y,2)

DxtM=subs(Dxt,t,1)
D2xtM=subs(D2xt,t,1)
DytM=subs(Dyt,t,1)
D2ytM=subs(D2yt,t,1)
