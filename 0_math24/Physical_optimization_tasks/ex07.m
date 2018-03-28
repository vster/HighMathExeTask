% Общая площадь шаров
% S=S1+S2=2*pi*R1*h1+2*pi*R2*h2
% h1=R1-R1*sin(alfa1), где sin(alfa1)=R1/x

syms R1 R2 x L;
h1=R2-R1^2/x
h2=R2-R2^2/(L-x)
S=2*pi*R1*h1+2*pi*R2*h2
S=expand(S)
% - (2*pi*R2^3)/(L - x) + 2*pi*R2^2 + 2*pi*R1*R2 - (2*pi*R1^3)/x
dS=diff(S,x)
% (2*pi*R1^3)/x^2 = (2*pi*R2^3)/(L - x)^2
% x^2/(L-x)^2=R1^3/R2^3 - условие, при котором наибольшая площадь освещения


