syms t
x=t^3+3*t+1
y=3*t^5+5*t^3+1
Dyx=diff(y,t)/diff(x,t)
Dyx=simplify(Dyx)