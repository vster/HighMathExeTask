% Compute the curvilinear integral
% int(C)y^2*dx+x*y*dy
% where C is the arc of the ellipse, 
% specified parametrically in the form 
% r (t) = (a*cos(t), b*sin(t)), 0<=t<=pi/2

% int(C)P*dx+Q*dy=int(alfa:beta)(P(x(t),y(t)*dx/dt+Q(x(t),y(t))*dy/dt)*dt

syms t dt a b;
x=a*sin(t)
y=b*cos(t)
dx=diff(x,t)*dt
dy=diff(y,t)*dt
df=y^2*dx+x*y*dy
df=simplify(df)
% a*b^2*dt*cos(t)*(2*cos(t)^2 - 1)
I=int(df/dt,t,0,pi/2)
% (a*b^2)/3