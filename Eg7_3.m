a= 0;    b= 6;    n= 61;    x= linspace(a,b,n);
c= 0;    d= 4;    m= 41;    y= linspace(c,d,m);
TVals= fOnGrid(x,y,@T_plate);
% �߽�ֵȫ��Ϊ0
TVals(1,:)= zeros(1,n);    TVals(m,:)= zeros(1,n);
TVals(:,1)= zeros(m,1);    TVals(:,n)= zeros(m,1);
nSteps= 6000;
close all
figure
colormap('hot')
for  tau= 0:nSteps
    pcolor(TVals)
   
    shading interp
    % caxis('manual') % ���˾��ô�ָ������
    title(sprintf('tau= %1d',tau),'Fontsize',14)
    axis equal off
    pause(.001)
    shg
    % �����¶ȷֲ�
    TVals= Average(TVals);

end  % for����
