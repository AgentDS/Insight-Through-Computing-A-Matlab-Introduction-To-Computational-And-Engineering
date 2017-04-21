close all
figure
axis equal off
hold on
SW= 1;
FW= 13*SW;
GR= (1+sqrt(5))/2;
FL= GR*FW;
RR= 2.5*SW;
SR= 0.5*SW;


BL= 0.3*FL;     DrawFlag(0, 0, FL, FW, BL, RR, SR)