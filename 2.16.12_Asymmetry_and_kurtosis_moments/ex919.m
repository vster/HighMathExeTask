clear
x=[2 4 6 8]
p=[0.4 0.3 0.2 0.1]

% The initial moment of the first order
alfa1=sum(x.*p)
% 4
alfa2=sum((x.^2).*p)
% 20
alfa3=sum((x.^3).*p)
% 116.8000
alfa4=sum((x.^4).*p)
% 752

% Central moment second order
mu2=alfa2-alfa1^2
% 4
DX=mu2
sigmax=sqrt(DX)
% 2

% The central moment of the third order
mu3=alfa3-3*alfa1*alfa2+2*alfa1^3
% 4.8000

% Asymmetry
Sk=mu3/sigmax^3
% 0.6000

% Central moment of the fourth order
mu4=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 35.2000

% Excess
Ex=mu4/sigmax^4-3
% -0.8000