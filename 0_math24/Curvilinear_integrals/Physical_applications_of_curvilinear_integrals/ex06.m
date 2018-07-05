% The body of mass m is thrown at an angle to the horizon alfa 
% with the initial velocity v0. Calculate the work of the force 
% of attraction F = m*g for the time the body moves to 
% the moment of impact with the earth.

syms t v0 alfa m g;
% x=v0x*t
x=v0*cos(alfa)*t
% y=v0y*t-g*t^2/2
y=v0*sin(alfa)*t-g*t^2/2

t1=solve(y==0,t)
t1=(2*v0*sin(alfa))/g

% F=m*g=m*(0,-g)=(P,Q)
P=0
Q=-g*m
f=P*diff(x,t)+Q*diff(y,t)
% g*m*(g*t - v0*sin(alfa))
W=int(f,t,0,t1)
% 0

% The result is explained by the fact that the Earth's 
% gravitational field is potential, because the equality
% dQ/dx=dP/dy=0

% u(x,y)=int()P*dx+C1(y)=int()0*dx+C1(y)=C0+C1(y)
% du/dy=Q(x,y)=-g => diff(C1(y),y)=-g => C1(y)=-g*y+C2
% u(x,y)=C0-g*y+C2=C-g*y => u(x,y)=-g*y
% W=u(A)-u(0)=0