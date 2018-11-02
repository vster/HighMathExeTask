syms x y dy d2y
y1=x
y2=exp(x)

dy1=1
d2y1=0

dy2=exp(x)
d2y2=exp(x)

D=det([x exp(x) y;1 exp(x) dy;0 exp(x) d2y])
% y*exp(x) - d2y*exp(x) + d2y*x*exp(x) - dy*x*exp(x)=0
% y-d2y+d2y*x-dy*x=0
% d2y*(x-1)-dy*x+y=0