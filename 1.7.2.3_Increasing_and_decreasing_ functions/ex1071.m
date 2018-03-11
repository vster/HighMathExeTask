syms x y y1 real;
A=[2,0]
B=[8,0]

C=[0,y1]

CA=A-C
CB=B-C

cos_phi=dot(CA,CB)/(norm(CA)*norm(CB))
cos_phi=simplify(cos_phi)
phi=acos(cos_phi)

ezplot(phi)

dphi=simplify(diff(phi))
pretty(dphi)

slv=solve(dphi)

% [0 4]
% [0 -4]