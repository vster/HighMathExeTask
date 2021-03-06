% Normal distribution
clear
digits(5)
I=[1 2 3 4 5 6 7 8 9 10 11 12 13 14]
nx=[4 4 8 16 18 20 30 28 22 18 14 10 4 4]
X=I+0.5
%     1.5000    2.5000    3.5000    4.5000    5.5000    6.5000    7.5000    8.5000
%     9.5000   10.5000   11.5000   12.5000   13.5000   14.5000
n=sum(nx)
% 200
W=nx/n
%    0.0200    0.0200    0.0400    0.0800    0.0900    0.1000    0.1500    0.1400
%    0.1100    0.0900    0.0700    0.0500    0.0200    0.0200
% X=T+0.5
T=1:14
T2=T.^2
% 1     4     9    16    25    36    49    64    81   100   121   144   169   196
MT=sum(T.*W)
% 7.5200
MT2=sum(T2.*W)
% 64.7800
MX=MT+0.5
% 8.0200
MX=8
sig2x=MT2-MT^2
% 8.2296
sigx=sqrt(sig2x)
% 2.8687
sigx=2.9
syms x
f=1/(sigx*sqrt(sym(2)*pi))*exp(-(x-MX)^2/(2*sigx^2))

U=(X-8)/2.9
%   -2.2414   -1.8966   -1.5517   -1.2069   -0.8621   -0.5172   -0.1724    0.1724
%    0.5172    0.8621    1.2069    1.5517    1.8966    2.2414
Zu=1/sqrt(2*pi)*exp(-U.^2/2)
%   0.0324    0.0660    0.1197    0.1926    0.2751    0.3490    0.3931    0.3931
%   0.3490    0.2751    0.1926    0.1197    0.0660    0.0324
fx=Zu/2.9
%    0.0112    0.0228    0.0413    0.0664    0.0949    0.1203    0.1355    0.1355
%    0.1203    0.0949    0.0664    0.0413    0.0228    0.0112

sig=sigx
m=MX
digits(2)
for i=1:14
    a=I(i);
    b=I(i)+1;
    % P(<a<X<b)
    Pab(i)=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))));
end
disp(Pab)
%    0.0114    0.0231    0.0416    0.0666    0.0948    0.1199    0.1349    0.1349
%    0.1199    0.0948    0.0666    0.0416    0.0231    0.0114