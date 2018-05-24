syms t;
x=12*cos(t)+5*sin(t)
y=5*cos(t)-12*sin(t)

ezplot(x,y)

% S= int (t1-t2) y(t)*diff(x) dt
S=int(y*diff(x),t,0,2*pi)
% 169*pi