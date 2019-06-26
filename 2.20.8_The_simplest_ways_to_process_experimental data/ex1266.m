clear
digits(4)
syms l

L=[15 75 250]
V=[4.2 4.0 2.7]

for k=1:2
    v(k)=vpa((l-L(k))/(L(k+1)-L(k))*(V(k+1)-V(k))+V(k))
end

S(l)=piecewise(L(1)<=l<L(2),v(1),...
               L(2)<=l<=L(3),v(2))
         
fplot(S,[0 300])
grid on