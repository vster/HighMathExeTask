% Indium-111 radioisotope is often used in radioisotope 
% medical diagnostics and radiation therapy. 
% Its half-life is 2.8 days. What was the initial mass 
% of the isotopic substance, if in two weeks there was 5g left?

% N(t)=N0*exp(-L*t)=N0*exp(-log(2)*t/T)
% N0=N(t)*exp(-log(2)*t/T)

clear
syms N t T
digits(3)
N0=N*exp(log(2)*t/T)
N01=subs(N0,[N t T],[5 14 2.8])
vpa(N01)
% 160
