clear
syms t p
syms x(t) X
eq1=diff(x,t,2)+x-5*t^2
x0=0
dx0=0

cond=([x(0)==x0,subs(diff(x(t), t), t, 0)==dx0])
x3=dsolve(eq1,cond)
x3=simplify(x3)
% 10*cos(t) + 5*t^2 - 10

adx0=[x0 dx0]
x4=opercalc(eq1,adx0)
% 10*cos(t) + 5*t^2 - 10

check=simplify(x3-x4)

syms z(t) Z teta
adz0=adx0
len=length(adz0)
eq2=diff(z,t,2)+z-1
f(t)=5*t^2
eq3=laplace(eq2,t,p)
% p^2*laplace(z(t), t, p) - p*z(0) - subs(diff(z(t), t), t, 0) - 1/p + laplace(z(t), t, p)
eq4=subs(eq3,laplace(z(t),t,p),Z)
for j=1:len
    eq4=subs(eq4,subs(diff(z(t),t,j-1),t,0),adz0(j))
end
% Z + Z*p^2 - 1/p
Z1=solve(eq4,Z)
% 1/(p^3 + p)
z1(t)=ilaplace(Z1,p,t)
% 1 - cos(t)
dz1(t)=diff(z1)
% sin(t)
x5=int(f(teta)*dz1(t-teta),teta,0,t)
% 10*cos(t) + 5*t^2 - 10
