% We find the expression for the Taylor expansion of the function 
% of the three variables x, y and z in the neighborhood 
% of the point (0,0,0) to the second order of smallness.
% f(x,y,z)=exp(x+y+z)

clear
syms x y z x1 y1 z1;
f(x,y,z)=exp(x+y+z)
r=[x y z]
r1=[x1 y1 z1]
r0=[0 0 0]
x0=0
y0=0
z0=0

f(x1,y1,z1)=subs(f,r,r1)
f0=subs(f(x1,y1,z1),r1,r0)
ts=f0
term=f(x1,y1,z1)
for n=1:2
    dtermx=diff(term,x1);
    dtermy=diff(term,y1);
    dtermz=diff(term,z1);
    term=(dtermx*(x-x0)+dtermy*(y-y0)+dtermz*(z-z0))/n
    term0=subs(term,r1,r0)
    ts=ts+term0
end
ts1=expand(ts)
% x^2/2 + x*y + x*z + x + y^2/2 + y*z + y + z^2/2 + z + 1
