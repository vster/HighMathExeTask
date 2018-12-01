% Heat equation

% 1. Heat equation for non-stationary case
% dQ=k*du/dn*dS*dt
% dS - surface element
% k - internal thermal conductivity

% Q=dt*int_int(S)k*du/dn*dS
% dQ=gamma*du/dt*dt*ro*dV
% ro - substance density
% gamma - heat capacity of substance
% Q=dt*int_int_int(V)gamma*ro*du/dt*dV

% Then
% int_int_int(V)du/dt*dV=a^2*int_int(S)du/dn*dS
% where a^2=k/(ro*gamma)

% du/dn=|grad(u)| and grad(u)=du/dx*i+du/dy*j*du/dz*k

% int_int_int(V)du/dt*dV=
%   =a^2*int_int(S)(du/dx*cos(n,x)+du/dy*cos(n,y)+du/dz*cos(n,z))*dS

% We use the Ostrogradsky-Gauss formula
% int_int_int(V)du/dt*dV=a^2*int_int_int(V)(d2u/dx2+d2u/dy2+d2u/dz2)dV
% int_int_int(V)(du/dt-a^2*(d2u/dx2+d2u/dy2+d2u/dz2))*dV=0
% du/t=a^2*(d2u/dx2+d2u/dy2+d2u/dz2)
% This is heat equation for nonstationary case

% if the body is a pivot
% du/dt=a^2*d2u/dx2

% 1. Unlimited rod case
% du/dt=a^2*d2u/dx^2
% t>0, -inf<x<+inf
% initial condition
% u(x,0)=f(x), -inf<x<+inf
% Applying the Fourier method, we get the solution
% u(x,t)=1/(2*a*sqrt(pi*t))*int(-inf:+inf)f(ksi)*exp(-(ksi-x)^2/(4*a^2t)d_ksi
% this is the Poisson integral

% 2. Case of a rod bounded on one side
% du/dt=a^2*d
% initial condition
% u(x,0)=f(x)
% boundary condition
% u(0,t)=phi(t)
% u(x,t)=1/(2*a*sqrt(pi*t))*int(0:inf)f(ksi)*
%     [exp(-(ksi-x)^2/(4*a^2*t)*exp(-(ksi+x)^2/(4*a^2*t)]d_ksi+
% +1/(2*a*sqrt(pi*t))*int(0:t)phi(eta)*exp(-x^2/(4*a^2*(t-eta)))*
%   *(t-eta)^(-3/2)d_eta

% 3. The case of a rod bounded at both ends x=0 and x=L
% du/dt=a^2*d2u/dx2
% initial condition
% u(x,t)(t=0)=f(x)
% boundary condition
% u(x=0)=u(x=L)0
% or
% du/dx(x=0)=du/dx(x=L)=0

% In this case solution is
% u(x,t)=sum(k=1:inf)bk*exp(-(k*pi*a/L)^2*t)*sin(k*pi*x/L)
% where
% bk=2/L*int(0:L)f(x)*sin(k*pi*x/L)dx
% for boundary conditions u(x=0)=u(x=L)=0

% u(x,t)=sum(k=1:inf)ak*exp(-(k*pi*a/L)^2*t)*cos(k*pi*x/L)+a0
% where
% ak=2/L*int(0:L)f(x)*cos(k*pi*x/L)dx
% a0=1/L*int(0:L)f(x)dx
% for boundary conditions du/dx(x=0)=du/dx(x=L)=0




