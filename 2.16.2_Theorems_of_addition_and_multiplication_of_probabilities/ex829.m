% a - W
% b - B
% a+b - all
syms a b
% P1=P(A)*P(B/A)
P1=(a/(a+b))*(b/(a+b-1))
% P2=P(C)*P(D/C)
P2=(b/(a+b))*(a/(a+b-1))
% (a*b)/((a + b)*(a + b - 1))
P=P1+P2
% (2*a*b)/((a + b)*(a + b - 1))
