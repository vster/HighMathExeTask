clear
A1=[1 2 3 14;...
    3 2 1 10;...
    1 1 1 6;...
    2 3 -1 5;...
    1 1 0 3]
ra1=rank(A1)
% 3
A=A1;
A(:,4)=[]
ra=rank(A)
% 3
if (ra1~=ra)
    display('System incompatible')
else
    display('System compatible')
end

A2(1,:)=A(1,:);
A2(2,:)=A(3,:);
A2(3,:)=A(5,:);
B(1,1)=A1(1,4);
B(2,1)=A1(3,4);
B(3,1)=A1(5,4);
X=A2^(-1)*B;
X'
%     1     2     3
