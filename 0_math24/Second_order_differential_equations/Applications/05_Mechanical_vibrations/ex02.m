syms k1 k2 m
% k2=2*k1
% x=x1+x2 => F/k=F/k1+F/k2 => 1/k=1/k1+1/k2 => k=k1*k2/(k1+k2)
k=k1*k2/(k1+k2)
T1=2*pi*sqrt(m/k)
% 2*pi*((m*(k1 + k2))/(k1*k2))^(1/2)

% x=x1=x2, F=F1+F2 => k*x=k1*x1+k2*x2=(k1+k2)*x => k=k1+k2
k=k1+k2
T2=2*pi*sqrt(m/k)
% 2*pi*(m/(k1 + k2))^(1/2)

KT=simplify(T2/T1)
%  (m/(k1 + k2))^(1/2)/((m*(k1 + k2))/(k1*k2))^(1/2)
KT=sqrt(k1*k2)/(k1+k2)

KT=subs(KT,k2,2*k1)
% (2*k1^2)^(1/2)/(3*k1)
KT=sqrt(sym(2))/3
% 2^(1/2)/3