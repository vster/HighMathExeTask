% Solve equation
% du/dt=d2u/dx2
% initial conditions
% u(x,t)(t=0)=f(x)=piecewise(0<=x<=L,1-x/L,-L<=x<=0,1+x/L,0)

% We write the solution in the form of the Poisson integral
% u(x,t)=1/(2*a*sqrt(pi*t))*int(-inf:+inf)f(ksi)*
%     *exp(-(ksi-x)^2/(4*a^2*t))d_ksi

clear
syms x L real
assume(L>0)
f(x)=piecewise(0<=x<=L,1-x/L,-L<=x<=0,1+x/L,0)
a=1
syms t ksi d_ksi x real
% I1=1/(2*sqrt(pi*t))*int((1+ksi/L)*exp(-(ksi-x)^2/(4*t)),ksi,-L,0)
dF1=(1+ksi/L)*exp(-(ksi-x)^2/(4*t))*d_ksi
% (x-ksi)/(2*sqrt(t))=mu
syms mu d_mu
ksi1=x-2*sqrt(t)*mu
d_ksi1=-2*sqrt(t)*d_mu
dF1=simplify(subs(dF1,[ksi,d_ksi],[ksi1,d_ksi1]))
% (2*d_mu*exp(-mu^2)*(2*mu*t - t^(1/2)*(L + x)))/L
% ksi(-L:0) -> mu( (x+L)/(2*sqrt(t)) : x/(2*sqrt(t))
I1=1/(2*sqrt(pi*t))*int(dF1/d_mu,mu,x/(2*sqrt(t)),(x+L)/(2*sqrt(t)))


dF2=(1-ksi/L)*exp(-(ksi-x)^2/(4*t))*d_ksi
% (x-ksi)/(2*sqrt(t))=mu
syms mu d_mu
ksi1=x-2*sqrt(t)*mu
d_ksi1=-2*sqrt(t)*d_mu
dF2=simplify(subs(dF2,[ksi,d_ksi],[ksi1,d_ksi1]))
% -(2*d_mu*exp(-mu^2)*(2*mu*t + t^(1/2)*(L - x)))/L
% ksi(0:L) -> mu( x/(2*sqrt(t)) : (x-L)/(2*sqrt(t)) )
I2=1/(2*sqrt(pi*t))*int(dF2/d_mu,mu,(x-L)/(2*sqrt(t)),x/(2*sqrt(t)))

% I2=1/(2*sqrt(pi*t))*int((1-ksi/L)*exp(-(ksi-x)^2/(4*t)),ksi,0,L)
u=simplify(I1+I2)
pretty(u)
