% Find integral
% int(C)x*dx+y*dy+(x+y-1)*dz
% along the line C, which is a straight line 
% from point A(1,1,1) to point B(2,3,4)

% AB
% (x-xA)/(xB-xA)=(y-yA)/(yB-yA)=(z-zZ)/(zB-zA)
% (x-1)/(2-1)=(y-1)/(3-1)=(z-1)/(4-1)
% (x-1)/1=(y-1)/2=(z-1)/3=t

% we rewrite the equation of the line in parametric form
syms t dt;
x=t+1
y=2*t+1
z=3*t+1
% 0<=t<=1

dx=diff(x)*dt
dy=diff(y)*dt
dz=diff(z)*dt

df=x*dx+y*dy+(x+y-1)*dz
df=simplify(df)
% 2*dt*(7*t + 3)
I=int(df/dt,t,0,1)
% 13