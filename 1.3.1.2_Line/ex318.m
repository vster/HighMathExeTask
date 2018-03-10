syms x y z;
eq1=(x-2)/2
eq2=(y-1)/3
eq3=(z-3)/1

pl=2*x+3*y+z

syms t;
x=2*t+2
y=3*t+1
z=t+3

t0=solve(2*(2*t+2)+3*(3*t+1)+1*(t+3)==0)
x0=subs(x,t,t0)
y0=subs(y,t,t0)
z0=subs(z,t,t0)

M=[x0,y0,z0]
%[ 4/7, -8/7, 16/7]

syms x y z;
R=[x,y,z]
L1=R./M
L1=4/7*L1