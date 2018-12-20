% % w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=z^2
dw=simplify(diff(w,z))
% 2*z
% k=abs(z)=1/2

syms x y
k=abs(subs(dw,z,x+i*y))
% abs(2*x + y*2i)=1
% x^2+y^2=1/2