% w=(1+i*z)/(1-i*z)
clear
syms z
w=(1+i*z)/(1-i*z)

dw=simplify(diff(w,z))
% -((z - 1i)^2*2i)/(z^2 + 1)^2

alfa=simplify(angle(dw))
% angle(-((z - 1i)^2*1i)/(z^2 + 1)^2)
syms x y real
alfa1=subs(alfa,z,x+i*y)
% angle(-((x + y*1i - 1i)^2*1i)/((x + y*1i)^2 + 1)^2)
dw1=subs(dw,z,x+i*y)
% -((x + y*1i - 1i)^2*2i)/((x + y*1i)^2 + 1)^2

im_dw1=imag(dw1)
% imag(-((x + y*1i - 1i)^2*2i)/((x + y*1i)^2 + 1)^2)
% ...