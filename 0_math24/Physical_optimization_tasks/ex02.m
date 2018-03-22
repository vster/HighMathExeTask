syms r R epsilon;
% eta=Wr/W=Wr/(WR+Wr)
I=epsilon/(R+r)
WR=I^2*R
Wr=I^2*r
W=WR+Wr
W=simplify(W)
% КПД источника
eta=WR/W
% R/(R + r)
d_eta=diff(eta,R)
d_eta=simplify(d_eta)
% d_eta>0