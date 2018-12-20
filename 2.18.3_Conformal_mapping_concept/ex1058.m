% % w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=z^3
dw=simplify(diff(w,z))
% 3*z^2
alfa=angle(dw)
% angle(z^2)=0

syms x y real
dw1=expand(subs(dw,z,x+i*y))
% 3*x^2 + x*y*6i - 3*y^2
alfa=angle(dw1)
% atan2(6*x*y, 3*x^2 - 3*y^2) =0
% x*y=0 => lines x=0 and y=0