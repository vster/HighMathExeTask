syms x y;

% ezplot(4*x+4*y-pi)
% y=-x+pi/4

I=int(int(cos(2*x)+sin(y),y,0,-x+pi/4),x,0,pi/4)