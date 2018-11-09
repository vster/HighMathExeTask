syms k
k=1:19
xk=2:20
for i=1:10
    pk(i)=i/100
end
for i=11:19
    pk(i)=(20-i)/100
end
MX=sum(pk.*xk)
% 11.0000
DX=sum(pk.*(xk-MX).^2)
% 16.5000
% 800<sum(i=1:100)x(i)<1400
% -300<sum(i=1:100)x(i)-1100<300
% -3<sum(i=1:100)x(i)/100-11<3
% |sum(i=1:100)x(i)/100-11|<3 => epsilon=3
epsilon=3
P=1-DX/(n*epsilon^2)
% 0.9817

