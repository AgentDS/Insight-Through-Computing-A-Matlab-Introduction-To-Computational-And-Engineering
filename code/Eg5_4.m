close all
figure
axis equal off
hold on
SW= 1;               %条宽
FW= 13*SW;           %旗帜宽度
GR= (1+sqrt(5))/2;   %黄金系数
FL= GR*FW;           %旗帜长度
RR= 2.5*SW;          %星环半径
SR= 0.5*SW;          %五角星半径
BL= 0.40*FL;         %蓝色块长度
DrawFlag( 0,16, FL, FW, BL, RR, SR)
