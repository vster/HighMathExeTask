% Nonlinear mathematical pendulum

% Differential equation of vibrations
% eps=d2_alfa/dt2=M/I
% where
% eps is the angular acceleration, 
% M is the moment of force causing rotation, 
% I is the moment of inertia of the body relative to the axis of rotation.

syms m g L alfa
M=-m*g*L*sin(alfa)
I=m*L^2

d2_alfa_dt2=M/I
% -(g*sin(alfa))/L
% sin(alfa)~alfa
% diff(alfa,t,2)+g*alfa/L=0 => diff(alfa,t,2)+w^2*alfa=0
% where
% w=sqrt(g/L)
% T=2*pi/w=2*pi*sqrt(L/g)

% Period of oscillations of a nonlinear mathematical pendulum
syms t g L alfa0 real 
syms alfa(t)
eqn=diff(alfa,t,2)+(g/L)*sin(alfa)
% dalfa=diff(alfa,t)
% cond=([alfa(0)==alfa0,dalfa(0)==0])
alfaSol=dsolve(eqn)
%                                                                          0
%  2*jacobiAM((2^(1/2)*(C25 - g/L)^(1/2)*(C27 - t)*1i)/2, (2*g)/(g - C25*L))
% -2*jacobiAM((2^(1/2)*(C25 - g/L)^(1/2)*(C27 - t)*1i)/2, (2*g)/(g - C25*L))
% ...
