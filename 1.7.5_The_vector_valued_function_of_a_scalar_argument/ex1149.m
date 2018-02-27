syms t;
r=[t t^2 t^3]
t1=1
digits(4)

v=diff(r)
a=diff(r,2)

v1=norm(subs(v,t,t1))
vpa(v1)
a1=norm(subs(a,t,t1))
vpa(a1)