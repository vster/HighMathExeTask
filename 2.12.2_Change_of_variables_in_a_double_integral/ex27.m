% ID=int(int(log(x^2+y^2)),D)
% x^2+y^2=e^2
% x^2+y^2=e^4

syms ro teta e real;
assume(e>0)
x=ro*cos(teta)
y=ro*sin(teta)

f=log(x^2+y^2)
f=simplify(f)
% log(ro^2)
% 2*log(ro)

I1=int(2*log(ro)*ro,ro,e,e^2)
I1 = -e^2*(log(e) + e^2/2 - 2*e^2*log(e) - 1/2)
I1 = subs(I1,log(e),1)

I2=int(I1,teta,0,2*pi)
% pi*e^2*(3*e^2 - 1)