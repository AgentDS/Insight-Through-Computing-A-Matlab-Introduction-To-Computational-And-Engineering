t= linspace(0,2,100);
x= 3*t;    y= 2*t;
TVals= T_plate(x,y);
% 显示(0,0)到(6,4)线段上的值
plot3(x,y,TVals)

