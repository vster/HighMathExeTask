% 1 box: 20 w
% 2 box: 10 w, 10 b
% 3 box: 20 b

PH=sym([1/3 1/3 1/3],'r')
PAH=sym([1 1/2 0],'r')
P=PH(1)*PAH(1)/sum(PH.*PAH)
% 2/3