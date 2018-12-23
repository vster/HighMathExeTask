% int(gamma)dz/z
% gamma is circle z=exp(i*t)

syms z dz
df=dz/z
syms t dt
z1=exp(i*t)
dz1=diff(z1,t)*dt
% dt*exp(t*1i)*1i
df=subs(df,[z dz],[z1 dz1])
% dt*1i
I=int(df/dt,t,0,2*pi)
% pi*2i