% Find the half-life of a radioactive substance, if the activity 
% each month is reduced by 10%.

% Activity of isotope A is expressed by the formula
% A=dNd/dt
% N(t)=N0*exp(-L*t)
% Nd(t)=N0-N(t)=N0-N0*exp(-L*t)=N0*(1-exp(-L*t))
clear
syms N0 L t
Nd=N0*(1-exp(-L*t))
A=diff(Nd,t)
% L*N0*exp(-L*t)
% A0=L*N0
% A=A0*exp(-log(2)*t/T)
% T=t*log(2)/log(A0/A)
syms t A0 A
T=t*log(2)/log(A0/A)
T1=subs(T,[t A A0],[30 100 90])
vpa(T1)
% -197.0

