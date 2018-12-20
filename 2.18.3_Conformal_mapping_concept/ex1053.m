% Find the rotation angle and the scale distortion factor at a point
% z0 when mapping w=f(z)

% w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=z^3
z0=1-i
dw=simplify(diff(w,z))
% 3*z^2
alfa=angle(subs(dw,z,z0))
% -pi/2
k=abs(subs(dw,z,z0))
% 6