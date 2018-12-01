% Solve equation
% du/dt=d2u/dx2
% initial condition
% u(t=0)=f(x)=u0
% boundary condition
% u(x=0)=0


syms t x ksi u0
u=1/(2*sqrt(pi*t))*int(u0*(exp(-(ksi-x)^2/(4*t))-...
        exp(-(ksi+x)^2/(4*t))),ksi,0,+inf)
pretty(u)
syms d_ksi

F1=exp(-(ksi-x)^2/(4*t))
syms mu d_mu
% (x-ksi)/(2*sqrt(t))=mu => 
ksi1=x-mu*2*sqrt(t)
d_ksi1=-2*sqrt(t)*d_mu
F1=simplify(subs(F1,[ksi,d_ksi],[ksi1,d_ksi1]))
% exp(-mu^2)
I1=u0/sqrt(sym(pi))*int(F1,mu,-inf,x/(sym(2)*sqrt(t)))
% (u0*(erf(x/(2*t^(1/2))) + 1))/2

F2=exp(-(ksi+x)^2/(4*t))
syms mu d_mu
% (x+ksi)/(2*sqrt(t))=mu => 
ksi2=mu*2*sqrt(t)-x
d_ksi2=2*sqrt(t)*d_mu
F2=simplify(subs(F2,[ksi,d_ksi],[ksi2,d_ksi2]))
% exp(-mu^2)
I2=u0/sqrt(sym(pi))*int(F2,mu,x/(sym(2)*sqrt(t)),+inf)
% -(u0*(erf(x/(2*t^(1/2))) - 1))/2
I=simplify(I1-I2)
% u0*erf(x/(2*t^(1/2)))
