clear
A1=[3 2 4;...
    1 -4 -1;...
    7 10 12;...
    5 6 8;...
    3 -16 -5]
ra1=rank(A1)
% 2
A=A1;
A(:,3)=[]
ra=rank(A)
% 2
if (ra1~=ra)
    display('System incompatible')
else
    display('System compatible')
end

syms x1 x2
eq1=3*x1+2*x2-4
eq2=x1-4*x2+1
[x1 x2]=solve([eq1 eq2])
% x1 =
% 1
% x2 =1
% 1/2

A2(1,:)=A(1,:);
A2(2,:)=A(2,:);
B(1,1)=A1(1,3);
B(2,1)=A1(2,3);
X=A2^(-1)*B;
X'
%    1.0000    0.5000