close all
figure
axis equal off
hold on
SW= 1;               %����
FW= 13*SW;           %���Ŀ��
GR= (1+sqrt(5))/2;   %�ƽ�ϵ��
FL= GR*FW;           %���ĳ���
RR= 2.5*SW;          %�ǻ��뾶
SR= 0.5*SW;          %����ǰ뾶
BL= 0.40*FL;         %��ɫ�鳤��
DrawFlag( 0,16, FL, FW, BL, RR, SR)
