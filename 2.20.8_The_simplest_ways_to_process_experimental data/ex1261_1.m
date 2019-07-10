clear
digits(5)
% S=A*exp(c*t)
T=[2.2 2.7 3.5 4.1]
S=[67 60 53 50]
n=length(T)
T
T2=T.^2
Y=log10(S)
TY=T.*Y

st=sum(T)
st2=sum(T2)
sy=sum(Y)
sty=sum(TY)

syms c lgA
e=exp(1)
eq1=vpa(st*c*log10(e)+n*lgA-sy)
% 5.4287*c + 4.0*lgA - 7.0275
eq2=vpa(st2*c*log10(e)+st*lgA-sty)
% 17.889*c + 12.5*lgA - 21.819

[c lgA]=solve([eq1 eq2],[c lgA])
% c =
% -0.15341
% lgA =
% 1.9651
A=10^lgA
% 92.271
S2=A*exp(c*T)
% [ 65.841, 60.979, 53.937, 49.194]

syms t
phi(t)=approxexp(T,S)
% 92.271*exp(-0.15341*t)
S3=phi(T)
% [ 65.841, 60.979, 53.937, 49.194]
D=S-S3
% [ 1.1593, -0.97931, -0.93661, 0.8063]

plot(T,S,'o',T,S2)
grid
