% Present numbers
% z1=1+i, z2=sqrt(3)+i, z3=1+sqrt(3)i
% in trigonometric form,
% then find complex number z1/(z2*z3)

z(1)=sym(1+i)
z(2)=sym(sqrt(3)+1i)
z(3)=sym(1+1i*sqrt(3))

for n=1:3
    r(n)=abs(z(n));
    phi(n)=angle(z(n));
    z1(n)=r(n)*(cos(phi(n))+1i*sin(phi(n)));
end
disp(z1)
% [ 1 + 1i, 3^(1/2) + 1i, 1 + 3^(1/2)*1i]
z2=z(1)/(z(2)*z(3))
% 0.2500 - 0.2500i