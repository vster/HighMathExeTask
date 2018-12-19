% Mechanical vibrations

% Free harmonic oscillations
% x(t)=A*cos(w*t+phi0)
% or
% x(t)=A*sin(w*t+phi0)
% where
% A - oscillation amplitude
% w*t+phi0 - oscillation phase
% phi0 - initial phase
% w - circular or cyclic frequency
% w=2*pi/T

syms A w t phi0
x(t)=A*cos(w*t+phi0)
v(t)=diff(x(t),t)
% -A*w*sin(phi0 + t*w)
a(t)=diff(x(t),t,2)
% -A*w^2*cos(phi0 + t*w)

% x''+w^2*x=0

% F=-k*x
% m*x''=-k*x => x''+k/m*x=0
% w=sqrt(k/m)
% T=2*pi/w=2*pi*sqrt(m/k)
% where 
% m is mass of body
% k is spring stiffness

% mathematical pendulum
% T=2*pi*sqrt(L/g)
% where 
% L is the length of the pendulum, 
% g is the acceleration of gravity.

% physical pendulum
% T=2*pi*sqrt(I/(m*g*a))
% where 
% I is the moment of inertia of the body relative to the axis of rotation, 
% m is the mass of the body, 
% a is the distance from the axis of rotation to the center of mass

% Damped oscillations
% Fc=-c*x'
% m*x''+c*x'+kx=0
% x''+c/m*x'+k/m*x=0

% Put
% c/m=2*beta
% k/m=w0^2

% Then
% x''+2*beta*x'+w0^2*x=0

syms t x(t) beta w0 x0
eqn=diff(x,t,2)+2*beta*diff(x,t)+w0^2*x
cond=x(0)==x0
xSol=dsolve(eqn,cond)
% C24*exp(-t*(beta + ((beta + w0)*(beta - w0))^(1/2))) - exp(-t*(beta - ((beta + w0)*(beta - w0))^(1/2)))*(C24 - x0)

syms t x(t) A lam beta w0
x(t)=A*exp(lam*t)
dx(t)=diff(x,t)
% A*lam*exp(lam*t)
d2x(t)=diff(x,t,2)
% A*lam^2*exp(lam*t)
eqn1=d2x+2*beta*dx+w0^2*x
% A*lam^2*exp(lam*t) + A*w0^2*exp(lam*t) + 2*A*beta*lam*exp(lam*t)=0 =>
eqn2=lam^2+2*beta*lam+w0^2
lamSol=solve(eqn2,lam)
% - beta - ((beta + w0)*(beta - w0))^(1/2)
%   ((beta + w0)*(beta - w0))^(1/2) - beta

% Case 1
% Aperiodic attenuation mode: beta>w0
% beta^2>w0^2
% x(t)=C1*exp(lam1*t)+C2*exp(lam2*t)

% Case 2
% Edge mode: beta=w0
% lam1=lam2=-beta=-w0
% x(t)=(C1*t+C2)*exp(-w0*t)
% tau=2*pi/w0
% tau=2*pi/lam1=2*pi/(beta-sqrt(beta^2-w0^2))=
%   = 2*pi/w0*(beta/w0+sqrt((beta/w0)^2-1))
% tau=2*pi/w0*Phi(beta/w0)
% In edge mode (case 2) beta/w0=1
% In aperiodic attenuation mode (case 1) beta/w0>1
% then tau=2*pi/w0*Phi(beta/w0)>2*pi/w0

% Case 3
% Small attenuation mode: beta<w0
% lam1,2=-beta+-i*sqrt(w0^2-beta^2)
% x(t)=exp(-beta*t)*(C1*cos(w1*t)+C2*sin(w1*t))
% where
% w1=sqrt(w0^2-beta^2)
% x(t)=A*exp(-beta*t)*cos(w1*t+phi0)

% Forced oscillations. Resonance
% Let an external force act on the oscillating system
% F(t)=F0*cos(w*t)

% x''+w0^2*x=F0/m*cos(w*t)

% Common decision
% x0(t)=A*sin(w0*t+phi0)

% Private decision
syms t w B F0 m
x1(t)=B*cos(w*t)
dx1(t)=diff(x1,t)
% -B*w*sin(t*w)
d2x1(t)=diff(x1,t,2)
% -B*w^2*cos(t*w)
eqn3=d2x1+w0^2*x1-F0/m*cos(w*t)
% B*w0^2*cos(t*w) - B*w^2*cos(t*w) - (F0*cos(t*w))/m  |:cos(w*t)
% B*w0^2 - B*w^2 - F0/m = 0
% B=F0/(m*(w0^2-w^2))

% Common decision
% x(t)=x0(t)+x1(t)=A*sin(w0*t+phi0)+(F0/(m*(w0^2-w^2))*cos(w*t)
% If w->w0 then second term increase
% This phenomenon is called resonance.

% The physical model of forced oscillations is more realistic, 
% given the damping of oscillations
% x''+2*beta*x'+w0^2*x=(F0/m)*cos(w*t)

% x''+2*beta*x'+w0^2*x=(F0/m)*exp(i*w*t)
% We search private decision in form
% x1(t)=B*exp(i*(w*t+phi))
syms w t phi B
x1(t)=B*exp(i*(w*t+phi))
dx1(t)=diff(x1,t)
% B*w*exp(phi*1i + t*w*1i)*1i
d2x1(t)=diff(x1,t,2)
% -B*w^2*exp(phi*1i + t*w*1i)
eqn4=d2x1+2*beta*dx1+w0^2*x1-(F0/m)*exp(i*w*t)
% - (F0*exp(t*w*1i))/m - B*w^2*exp(phi*1i + t*w*1i) + B*w0^2*exp(phi*1i + t*w*1i) + B*beta*w*exp(phi*1i + t*w*1i)*2i
eqn4=expand(simplify(eqn4/exp(1i*(w*t+phi))))
% - B*w^2 + B*beta*w*2i + B*w0^2 - (F0*exp(-phi*1i))/m
% (w0^2-w^2)*B+2i*beta*w+B=F0/m*(cos(phi)-i*sin(phi))

% / (w0^2-w^2)*B=F0/m*cos(phi)
% \ 2*beta*w*B=F0/m*cos(phi)

% B=F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))
% phi=atan(2*beta*w/(w0^2-w^2))

% Private decision
% x1(t)=F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))*exp(i*(w*t+phi))
% Re(x1(t))=F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))*cos(i*(w*t+phi))

% The final answer is the sum of two members:
% x(t)=x0(t)+Re(x1(t))=x0(t)+F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))*cos(i*(w*t+phi))

% x(t)=F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))*cos(i*(w*t+phi))
% where
% phi=atan(2*beta*w/(w0^2-w^2))

% maximum amplitude of steady oscillations at resonance
% x_max(w=w0)=F0/(2*m*beta*w0)

% lim(w->0)x_max=lim(x->0)F0/(m*sqrt((w0^2-w^2)^2+4*beta^2*w^2))=F0/(m*w0^2)

% the quality factor of the mechanical oscillatory system will be equal to
% Q=x_max(w=w0)/x_max(w->0)=(F0/(2*m*beta*w0))/(F0/(m*w0^2))=w0/(2*beta)

% Energy losses are also characterized by 
% a logarithmic damping decrement delta.
% Q=pi/delta
