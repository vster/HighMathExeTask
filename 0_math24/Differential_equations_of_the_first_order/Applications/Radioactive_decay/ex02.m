% The initial mass of the iodine isotope was 200g. 
% Determine the mass of iodine after 30 days, 
% if the half-life of the isotope is 8 days.

% N(t)=N0*exp(-L*t)
% L=log(2)/T
% N(t)=N0*exp(-log(2)*t/T)
syms N0 t T
digits(3)
N=N0*exp(-log(2)*t/T)
N1=subs(N,[N0 t T],[200 30 8])
vpa(N1)
% 14.9