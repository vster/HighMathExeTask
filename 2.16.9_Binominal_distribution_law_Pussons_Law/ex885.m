% 1000 pages, 100 errs
syms a m
a1=100/1000
% Pusson's Law
P(m)=(a^m/factorial(m))*exp(-a)
for i=0:3
    Pm(i+1)=subs(P(m),[a m],[a1 i])
end
digits(7)
P4=vpa(sum(Pm))
% 0.9999962
P41=1-P4
% 0.000003846834