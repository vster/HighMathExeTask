% Surface
% z^2=2*x*y
% x=1
% y=4
% z=0

syms x y;
z=sqrt(2*x*y)

fs=sqrt(1+diff(z,x)^2+diff(z,y)^2)
fs=simplify(fs)
pretty(fs)
fs=(x+y)/sqrt(2*x*y)

S=int(int(fs,y,0,4),x,0,1)
% (20*2^(1/2))/3