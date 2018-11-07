clear
x=[1 3 5 7 9]
p=[0.1 0.4 0.2 0.2 0.1]

% The initial moment of the first order
alfa1=sum(x.*p)
% 4.6000
alfa2=sum((x.^2).*p)
% 26.6000
alfa3=sum((x.^3).*p)
% 177.4000
alfa4=sum((x.^4).*p)
% 1.2938e+03

% Central moment second order
mu2=alfa2-alfa1^2
% 5.4400
DX=mu2
sigmax=sqrt(DX)
% 2.3324

% The central moment of the third order
mu3=alfa3-3*alfa1*alfa2+2*alfa1^3
% 4.9920

% Asymmetry
Sk=mu3/sigmax^3
% 0.3934

% Central moment of the fourth order
mu4=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 63.5392

% Excess
Ex=mu4/sigmax^4-3
% -0.8529