clear
digits(5)
% S=A*exp(c*t)
T=0:2:12
S=[1280 635 324 162 76 43 19]
n=7
T
T2=T.^2
Y=log10(S)
TY=T.*Y

st=sum(T)
%     42
st2=sum(T2)
%    364
sy=sum(Y)
%    15.4231
sty=sum(TY)
%    75.6311

syms c lgA
e=exp(1)
eq1=vpa(st*c*log10(e)+n*lgA-sy)
% 18.24*c + 7.0*lgA - 15.423
eq2=vpa(st2*c*log10(e)+st*lgA-sty)
% 158.08*c + 42.0*lgA - 75.631

[c lgA]=solve([eq1 eq2],[c lgA])
% c =
% -0.3476
% lgA =
% 3.1091
A=10^lgA
% 1285.5
S2=A*exp(c*T)
% [ 1285.5, 641.42, 320.05, 159.7, 79.686, 39.761, 19.84]

plot(T,S)
hold on
plot(T,S2)
grid
hold off