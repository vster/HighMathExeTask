syms t x
x=t*sqrt(t)
M=[1 7]

y=simplify(x*(8-x))
dyt=diff(y,t)

s=solve(t*sqrt(t)==M(1))
t0=1

v=subs(dyt,t,t0)