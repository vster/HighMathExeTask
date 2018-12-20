% % w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=i*z^2
dw=simplify(diff(w,z))
% z*2i
alfa=angle(dw)
% angle(z*1i)=0

syms x y real
dw1=expand(subs(dw,z,x+i*y))
% x*2i - 2*y

% Im(dw1)=x*2i=0 => x=0 => alfa=pi/2