% Compute the integral int_int(S)z^2*dS, 
% where S is the total surface of the cone sqrt(x^2 + y^2)<=z<=2.

% I=I1+I2=int_int(S1)z^2*dS1+int_int(S2)z^2*dS2
% S1 - lateral surface of the cone
% S2 - its foundation

syms x y;
z=sqrt(x^2+y^2)
f1=z^2

f2=f1*sqrt(1+diff(z,x)^2+diff(z,y)^2)
f2=simplify(f2)
% 2^(1/2)*(x^2 + y^2)

% I1=int_int(D)2^(1/2)*(x^2 + y^2)*dx*dy

syms r phi;
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f3=subs(f2,[x y],[x1 y1])
f3=simplify(f3)
% 2^(1/2)*r^2

I1=int(int(J*f3,r,0,2),phi,0,2*pi)
% 8*pi*2^(1/2)

% I2=int_int(S2)r^2*dS2
% r=2
% I2=4*in_int(S2)*dS2=4*4*pi=16*pi
I2=16*pi

I=I1+I2
% 16*pi + 8*pi*2^(1/2)
