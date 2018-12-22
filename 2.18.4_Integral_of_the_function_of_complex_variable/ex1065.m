% Calculate int(gamma)dz/(z-(1+i))
% where gamma is circle |z-(i+1)|=1

% (x-1)^2+(y-1)^2=1
syms t
x=1+cos(t)
y=1+sin(t)
z=x+i*y
z1=1+1i+exp(i*t)
dz1=diff(z1)
% exp(t*1i)*1i
syms z dz
f=dz/(z-(1+i))
f=subs(f,[z dz],[z1 dz1])
% 1i
I=int(f,t,0,2*pi)
% pi*2i


