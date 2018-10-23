% Barometric formula
% F=m*g=ro*g*V=ro*g*h*S
% P=F/S=ro*g*h*S/S=ro*g*h
% dP=-ro*g*dh

% Mendeleev-Clapeyron equation
% P*V=m/M*R*T => P=m/(V*M)*R*T=(ro/M)*RT => ro=M*P/(R*T)
% dP=-M*P/(R*T)*g*dh => dP/P=-M*g/(R*T)*dh
% int(1/P,P)=-int(M*g/(R*T),h)+log(C) 
% log(P)=-M*g/(R*T)*h+log(C) 
% P=C*exp(-M*g/(R*T)*h)
% P(h=0)=P0
% P=P0*exp(-M*g/(R*T)*h)
syms h P0 M g R T
P=P0*exp(-M*g/(R*T)*h)
P1=subs(P,[P0 M g R T],[760 0.029 9.8 8.31 288])
digits(3)
P1=vpa(P1)
% 760.0*exp(-1.2e-4*h)