syms x;
AB=17
BC=8
v1=5
v2=3

AC=sqrt(AB^2-BC^2)
s1=x
s2=sqrt((AC-x)^2+BC^2)

t=s1/v1+s2/v2
t=simplify(t)

dt=diff(t,x)
dt=simplify(dt)
pretty(dt)
xs=solve(dt)
% 9 κμ
