clear
digits(5)
T=[273 283 288 293 313 333 353 373]
S=[29.4 33.3 35.2 37.2 45.8 55.2 65.6 77.3]
% delta=A*t^alfa-S
% delta1=log(A)+alfa*log(T)-log(S)
syms A alfa lgA t
delta1=vpa(lgA+alfa*log10(T)-log10(S))
eq1=sum(delta1(1:4))
eq2=sum(delta1(5:8))
[alfa lgA]=solve([eq1,eq2])
% alfa =
% 3.0932
% lgA =
% -6.0624
A=10^lgA
% A =
% 8.661e-7
s(t)=A*t^alfa
% 8.661e-7*t^3.0932
S2=s(T)
% [ 29.729, 33.228, 35.078, 36.996, 45.38, 54.963, 65.83, 78.065]
plot(T,S,'o',T,S2)
grid