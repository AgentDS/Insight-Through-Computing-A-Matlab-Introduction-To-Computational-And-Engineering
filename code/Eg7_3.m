a= 0;    b= 6;    n= 61;    x= linspace(a,b,n);
c= 0;    d= 4;    m= 41;    y= linspace(c,d,m);
TVals= fOnGrid(x,y,@T_plate);
% 边界值全部为0
TVals(1,:)= zeros(1,n);    TVals(m,:)= zeros(1,n);
TVals(:,1)= zeros(m,1);    TVals(:,n)= zeros(m,1);
nSteps= 6000;
close all
figure
colormap('hot')
for  tau= 0:nSteps
    pcolor(TVals)
   
    shading interp
    % caxis('manual') % 个人觉得此指令有误
    title(sprintf('tau= %1d',tau),'Fontsize',14)
    axis equal off
    pause(.001)
    shg
    % 更新温度分布
    TVals= Average(TVals);

end  % for结束
