% % w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=z^2-2*z
dw=simplify(diff(w,z))
% k=abs(2*z-2)=1
% |z-1|=1/2