% M6_3_2
% ����������x��y�����Ķ���� 
% ����ͬһ����ͼ����չʾ�������ĺͶ�����߶�
function ShowPolygon(x,y)
n= length(x);

figure
% ����������x��y�����Ķ���� 
subplot(1,2,1)
hold on
axis equal off
plot([x,x(1)],[y,y(1)],'k')
hold off
% �������� 
xb= mean(x);
yb= mean(y);

% ��ͬһ����ͼ����չʾ�������ĺͶ�����߶�
subplot(1,2,2)
axis equal off
hold on
for k= 1:n
    plot([xb;x(k)],[yb;y(k)],'g')
end
hold off
end