% Find the rotation angle and the scale distortion factor at a point
% z0=-2*i when mapping w=(z+i)^2/(z-i)

% w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|

syms z
w=(z+i)^2/(z-i)
dw=simplify(diff(w,z))
% ((- 1 + z*1i)^3*(3 + z*1i))/(z^2 + 1)^2
alfa=angle(subs(dw,z,-2*i))
% 0
k=abs(subs(dw,z,-2*i))
% 5/9 < 1 - compression