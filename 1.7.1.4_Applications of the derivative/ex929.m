syms x y;
s=solve(x^2+y^2-5==0,y^2-4*x==0)
A=[s.x(1),s.y(1)]
B=[s.x(2),s.y(2)]

f1=x^2+y^2-5
f2=y^2-4*x

df1=-diff(f1,x)/diff(f1,y)
df2=-diff(f2,x)/diff(f2/y)

k1_a=subs(df1,[x y],A)
k2_a=subs(df2,[x y],A)

tan_phi_a=(k2_a-k1_a)/(1+k1_a*k2_a)
phi_a=atan(tan_phi_a)
digits(3)
phi_a=vpa(phi_a)

k1_b=subs(df1,[x y],B)
k2_b=subs(df2,[x y],B)

tan_phi_b=(k2_b-k1_b)/(1+k1_b*k2_b)
phi_b=atan(tan_phi_b)
digits(3)
phi_b=vpa(phi_b)
