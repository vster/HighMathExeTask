% Find the rotation angle and the scale distortion factor at a point
% z0 when mapping w=f(z)

% w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=1/z
z0=2*i
dw=simplify(diff(w,z))
% -1/z^2
alfa=angle(subs(dw,z,z0))
% 0
k=abs(subs(dw,z,z0))
% 1/4