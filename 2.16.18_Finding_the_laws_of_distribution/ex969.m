clear
digits(5)
I=4.1:0.1:5.8
nx=[1 2 3 4 5 8 8 9 10 10 9 9 7 5 4 3 2 1]

n=sum(nx)
X=I+0.05

W=nx/100
X-5
MX5=sum((X-5).*W)
% -0.0010
MX52=sum((X-5).^2.*W)
% 0.1403
MX=5+MX5
% 4.9990
DX=MX52-MX5^2
% 0.1403
sigx=sqrt(DX)
% 0.3746

syms x
f(x)=1/(sigx*sqrt(2*pi))*exp(-(x-5)^2/(2*sigx^2))
f(x)=vpa(f(x))
% 1.0651*exp(-3.5638*(x - 5.0)^2)
for i=1:18
    F(i)=f(X(i));
end
F
    
X
U=(X-5)/sigx
Zu=1/sqrt(2*pi)*exp(-U.^2/2)
fx=1/sigx*Zu
h=1/10
hfx=fx*h

W
P=hfx
W-P
(W-P).^2
(W-P).^2./P
ss=sum((W-P).^2./P)
% 0.0141

hi2=n*ss
% 1.4
l=18
t=3
r=l-t
% 15
% If hi2=1 then P=1
% If hi2=2 then P=1
% If hi2=1.4 then P=1>0
% According to the Pearson Criterion
% coincidence hypothesis is legitimate

% Criterion Romanovsky
% kr=abs(hi2-r)/(sqrt2*r)
kr=abs(1.4-15)/sqrt(30)
% 2.4830 < 3
% Distribution is consistent with normal
