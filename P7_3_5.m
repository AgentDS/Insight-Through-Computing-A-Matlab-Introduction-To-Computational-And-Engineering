a= 0;    b= 6;    n= 161;    x= linspace(a,b,n);
c= 0;    d= 4;    m= 41;    y= linspace(c,d,m);
TVals= fOnGrid(x,y,@T_plate);
OriginMax= max(max(TVals));
% 边界值全部为0
TVals(1,:)= zeros(1,n);    TVals(m,:)= zeros(1,n);
TVals(:,1)= zeros(m,1);    TVals(:,n)= zeros(m,1);
nSteps= 10000;
close all
figure
colormap('hot')
for  tau= 0:nSteps
    
    pcolor(TVals)
   
    shading interp
    % caxis('manual') % 个人觉得此指令有误,应删除
    title(sprintf('tau= %1d',tau),'Fontsize',14)
    axis equal off
    pause(.01)
    shg
    % 更新温度分布
    TVals= Average(TVals);
    NowMax= max(max(TVals));
    if  NowMax < OriginMax/10
        fprintf('n= %d,  m= %d\n',n,m)
        fprintf('Stop at tau= %d\n',tau)
        break;
    end  % if结束
end  % for结束
