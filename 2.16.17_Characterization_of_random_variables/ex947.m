clear
ksi=[2,5,7,1,10,5,9,6,8,6,2,3,7,6,8,...
    3,8,10,6,7,3,9,4,5,6]

% 1)
n=25
X=1:10
nx=zeros(1,10)
for i=1:25
    for j=1:10
        if ksi(i)==X(j)
            nx(j)=nx(j)+1
        end
    end
end

% 2)
W=nx/n
S=sum(W)
% 1

% 3)
plot(X,W)
grid
    
