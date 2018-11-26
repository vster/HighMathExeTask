syms x 
u(x)=sin(x)
syms t
phi=t^2+1

u1=fsubs(u(x),phi)

syms w(x)
w1=fsubs(w(x),phi)

function fs=fsubs(f,phi)
syms x
fs=subs(f,x,phi)
end

