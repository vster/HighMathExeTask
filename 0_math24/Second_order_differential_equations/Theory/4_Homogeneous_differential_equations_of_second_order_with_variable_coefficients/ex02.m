syms x
y1=cos(x)
y2=sin(x)

W=det([y1,y2;diff(y1,x),diff(y2,x)])
W=simplify(W)
% 1 - linearly independent