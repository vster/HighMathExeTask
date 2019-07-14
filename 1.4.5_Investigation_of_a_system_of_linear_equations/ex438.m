A1=[1 3 5 7 9 1;...
    1 -2 3 -4 5 2;...
    2 11 12 25 22 4]
ra1=rank(A1)
% 3
A=A1;
A(:,6)=[]
ra=rank(A)
% 2
if (ra1~=ra)
    display('System incompatible')
end