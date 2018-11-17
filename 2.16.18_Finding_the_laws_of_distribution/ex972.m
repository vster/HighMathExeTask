clear
digits(5)
I=0:2:18
nx=[10 29 51 58 102 90 81 39 30 10]

n=sum(nx)
T=1:10
X=2*T-1
W=nx/n
MT=sum(W.*T)
% 5.5040
MT2=sum(W.*T.^2)
% 34.3960
DT=MT2-MT^2
% 4.1020
sigt=sqrt(DT)
% 2.0253
MX=2*MT-1
% 10.0080
sigx=2*sigt
% 4.0507

syms x
f(x)=1/(sigx*sqrt(2*pi))*exp(-(x-10)^2/(2*sigx^2))
f(x)=vpa(f(x))
% 0.098488*exp(-0.030473*(x - 10.0)^2)

U=(X-10)/sigx
Zu=1/sqrt(2*pi)*exp(-U.^2/2)
fx=1/sigx*Zu
h=2
hfx=h*fx

X=X
W=W
hfx=hfx
F1=cumsum(W)
F2=cumsum(hfx)
DF=F1-F2
D=max(F1-F2)
% 0.0271
lam=D*sqrt(n)
% 0.6061
% From Tab.VI
% P(0.6061)=0.8643 > 0.1