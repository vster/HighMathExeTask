% Newton's Second Law
% a=F/m
% F=ma8A=m*d2r/dt2
% this is for const mass

% In the case when the body mass changes (for example, 
% in the case of relativistic motion), Newton's second law has the form
% F=dp/dt

% In common case
% F=F(r,v,t)

% Strength depends on time
% F=F(t)
% m*d2x/dt2=F(t)

% Integrating once, we find the law of change 
% in the velocity of the body v(t):
% v(t)=v0+1/m*int(0:t)F(tau)d_tau

% Integrating again, we obtain the law of motion x (t):
% x(t)=x0+int(0:t)v(tau)d_tau

% Force depends on speed: 
% F = F(v)
% F=-k*v
% resistance is described by Stokes law
% F=-6*pi*eta*R*v

% m*d2x/dt2=m*dv/dt=-k*v
% dv/v=-k/m*dt => int(v0:v)du/u=-k/m*int(0:t)d_tau
% log(v)-log(v0)=-k/m*t 
% v(t)=v0*exp(-k*t/m)
% x(t)=x0+int(0:t)v(tau)d_tau=x0+int(0:t)v0*exp(-k*t/m)d_tau
% x(t)=x0+(m*v0/k)*(1-exp(-k*t/m))

% With increasing speed process changes
% F=-mu*ro*S*v^2

% The described non-linear mode occurs when
% Re=ro*v*L/eta>100     % Reynolds number

% m*d2x/dt2=m*dv/dt=-mu*ro*S*v^2
% dv/v^2=-mu*ro*S/m*dt => int(v0:v)du/u^2=-mu*ro*S/m*int(0:t)d_tau

% -(1/v-1/v0)=-mu*ro*S/m*t => 1/v=1/v0+mu*ro*S/m*t
% v(t)=1/(1/v0+mu*ro*S*t/m)=v0/(1+mu*ro*S*v0/m*t)

syms t m mu ro S real
syms v(t) 
assume(m>0)
assume(mu>0)
assume(ro>0)
assume(S>0)
eqn=(diff(v,t)+(mu*ro*S/m)*v^2)
vSol=dsolve(eqn)
%  -1/(C2 - (S*mu*ro*t)/m)
% C2=-1/v0
syms v0 real
assume(v0>0)
v(t)=v0/(1+(S*mu*ro*v0*t)/m)

syms tau real
x=int(v(tau),tau,0,t)
% (m*log((S*mu*ro*t*v0)/m + 1))/(S*mu*ro)

% The force depends on the coordinate: F = F (x)
% Elastic force F = ?kx
% Gravitational attraction force F=?G*m1*m2/x^2

% m*d2x/dt2=-k*x
% d2x/dt2+k/m*x=0
syms t k m real
syms x(t)
eqn=diff(x,t,2)+k/m*x
xSol=dsolve(eqn)
xSol=simplify(xSol)
% C11*exp((t*(-k*m)^(1/2))/m) + C12*exp(-(t*(-k*m)^(1/2))/m)
% T=2*pi*sqrt(m/k)

% In the case of gravitational attraction, the motion of the body 
% is described by a nonlinear differential equation
% d2x/dt2=-G*M/x^2
% a=dv/dt=dv/dx*dx/dt=v*dv/dx
% m*d2x/dt2=m*dv/dt=m*v*dv/dx=F(x)
% m*v*dv=F(x)*dx
% m*int(v0:v)u*du=int(0:L)F(x)dx
% m*v^2/2-m*v0^2/2=int(0:L)F(x)dx
% The last equality expresses the law of conservation of energy.

