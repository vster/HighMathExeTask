% 1 box: 1 w, 1 b
% 2 box: 2 w, 3 b
% 3 box: 3 w, 5 b
% 4 box: 4 w, 7 b
clear
PAH=sym([1/2 2/5 3/8 4/11],'r')
PA=0
for i=1:4
    PH(i)=i/sym(10,'r')
    PA=PA+PH(i)*PAH(i)
end
disp(PA)

PA2=sum(PH.*PAH)
