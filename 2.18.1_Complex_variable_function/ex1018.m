syms z
w=exp(z)

w1=subs(w,z,pi*i/2)
% 1i

w2=simplify(subs(w,z,pi*(1-i)))
% exp(pi*(1 - 1i))
% -exp(pi)
vpa(w2)
% - 23.141 - 2.8803e-12i

syms k
w3=simplify(subs(w,z,1+(pi/2+2*pi*k)*i))
% exp(1)*exp(pi*k*2i)*1i
for i=1:3
    w3=subs(w3,k,i)
end
% exp(1)*1i

