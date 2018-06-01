% Find area area R:
% y=a^2/x,y=2*a^2/x,x=1,x=2

syms x y a;
y1=a^2/x
y2=2*a^2/x
S=int(int(1,y,y1,y2),x,1,2)
% a^2*log(2)