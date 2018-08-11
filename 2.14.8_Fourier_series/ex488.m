% Expand in the Fourier series a periodic function with period 2l, 
% given on the interval [-l;l] as follows
%         0 on -l<=x<=0
% f(x) =  x on 0<=x<=l/2
%         l/2 in l/2<=x<=l

syms x l;
assume(l>0);
% l=4;
f(x)=piecewise(-l<=x<=0,0,0<=x<=l/2,x,l/2<=x<=l,l/2)
% fplot(f,[-l,l])
% hold on

a0=(1/l)*int(f(x),x,-l,l)
% 3/2
syms m integer;
assume(m>=1)
a(m)=(1/l)*int(f*cos(m*pi*x/l),x,-l,l)
a(m)=simplify(a(m))
% (4*cos((pi*m)/2) + 2*m*pi*sin(pi*m) - 4)/(m^2*pi^2)
%                              =0
a(m)=(4*cos((pi*m)/2) - 4)/(m^2*pi^2)

b(m)=(1/l)*int(f*sin(m*pi*x/l),x,-l,l)
b(m)=simplify(b(m))
% (4*sin((pi*m)/2) - 2*pi*m + 4*m*pi*sin((pi*m)/2)^2)/(m^2*pi^2)

f1=a0/2;
for m=1:5
    disp([m, a(m),b(m)])
    f1=f1+a(m)*cos(m*pi*x/l)+b(m)*sin(m*pi*x/l);
    % fplot(f1,[-4 4]);
    % hold on
    % grid on
end   