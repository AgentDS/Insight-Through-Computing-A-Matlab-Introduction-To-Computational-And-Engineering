% M6_3_2
% 绘制由数组x和y决定的多边形 
% 并在同一个绘图窗口展示连接重心和顶点的线段
function ShowPolygon(x,y)
n= length(x);

figure
% 绘制由数组x和y决定的多边形 
subplot(1,2,1)
hold on
axis equal off
plot([x,x(1)],[y,y(1)],'k')
hold off
% 重心坐标 
xb= mean(x);
yb= mean(y);

% 在同一个绘图窗口展示连接重心和顶点的线段
subplot(1,2,2)
axis equal off
hold on
for k= 1:n
    plot([xb;x(k)],[yb;y(k)],'g')
end
hold off
end