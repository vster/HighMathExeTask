syms y;
digits(5)

h=sqrt(sym(6))/3
V=sqrt(sym(2))/12
P=1/12*sqrt(sym(2))*2500*9.8

A0=1225*sqrt(sym(2))*(5-h)
vpa(A0)

P(y)=2500*9.8*sqrt(sym(2))/12-(1/12*sqrt(sym(2))-1/8*y^3*3*sqrt(sym(3)))*1000*9.8
A1=int(P,y,0,sqrt(sym(6))/3)
vpa(A1)

A=A0+A1
vpa(A)