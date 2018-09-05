% dw=-pi*r^2*dh
% dw=pi*ro^2*sigma*sqrt(2*g*h)*dt
% -pi*r^2*dh=pi*ro^2*sigma*sqrt(2*g*h)*dt
% -r^2*dh=ro^2*sigma*sqrt(2*g*h)*dt
% dt=-r^2/(ro^2*sigma*sqrt(2*g))*dh/sqrt(h)

clear
syms t r ro sigma g h;
eq1=int(1,t)+r^2/(ro^2*sigma*sqrt(2*g))*int(1/sqrt(h),h)
% t + (2^(1/2)*h^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)
syms C h0;
eq1=t + (2^(1/2)*h^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)+C
eq2=subs(eq1,[t h],[0 h0])
% C + (2^(1/2)*h0^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)
t=(2^(1/2)*h0^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)-(2^(1/2)*h^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)
t=simplify(t)
% -(2^(1/2)*r^2*(h^(1/2) - h0^(1/2)))/(g^(1/2)*ro^2*sigma)
T=subs(t,h,0)
% (2^(1/2)*h0^(1/2)*r^2)/(g^(1/2)*ro^2*sigma)
T=subs(T,[r h0 sigma ro g],[2 6 0.6 1/12 9.8])
% (960*2^(1/2)*5^(1/2)*6^(1/2))/7
digits (5)
vpa(T)
% 1062.3