% Rectangle Formula
% int(a:b)f(x)dx=h*(y(1)+y(2)+...+y(n))+Rn
% where
% Rn<=h/2*(b-a)*M1, where M1=max(a:b)|df(x)|

% Trapezoid formula
% int(a:b)f(x)dx=h*((y(0)+y(n)/2+y(1)+y(2)+...+y(n-1))+R(n)
% where
% Rn<=h^2/12*(b-a)*M2, where M2=max(a:b)|d2f(x)|

% Simpson Formula
% int(a:b)f(x)dx=h/3*((y(0)+y(2k))+4*(y(1)+y(3)+...+y(2k-1))+
%     +2*(y(2)+y(4)+...+y(2k-2))+Rn
% where
% Rn<=h^4/180*(b-a)*M3, where M3=max(a:b)|d4f(x)|
