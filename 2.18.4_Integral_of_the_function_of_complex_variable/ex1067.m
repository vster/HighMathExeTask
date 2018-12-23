% int(gamma)f(z)dz
% f(z)=y+x*i
% gamma: OAB: zO=0,zA=i,zB=1+i

% f(z)=y+x*i
syms z
f(z)=z'*i
syms x y real
f=subs(f,z,(x+i*y))
% y + x*1i

clear
syms z
f(z)=z'*i
I=int(f,z,0,i)+int(f,z,i,1+i)
