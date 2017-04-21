% P10_1_9
function d= GetDist(Q1,Q2)
% Q1,Q2均为结构,表示两个点
% Q1,Q2可为用笛卡尔坐标,柱坐标,球坐标的二维点或三维点,但格式必须一致
% d为Q1,Q2的欧氏距离
PointForm= fieldnames(Q1); 

if  length(PointForm)==3  % 若为三维点
    if  strcmp(PointForm(1),'rho')==1  % 若为球坐标格式,且只支持{'rho','theta','phi'}
        % 转换Q1的坐标为直角坐标
        x1= Q1.rho*sin(Q1.theta)*cos(Q1.phi);
        y1= Q1.rho*sin(Q1.theta)*sin(Q1.phi);
        z1= Q1.rho*cos(Q1.theta);
        % 转换Q2的坐标为直角坐标
        x2= Q2.rho*sin(Q2.theta)*cos(Q2.phi);
        y2= Q2.rho*sin(Q2.theta)*sin(Q2.phi);
        z2= Q2.rho*cos(Q2.theta);
    elseif  strcmp(PointForm(1),'r')==1  % 若为圆柱坐标格式,且只支持{'r','theta','z'}
        % 转换Q1的坐标为直角坐标
        x1= Q1.r*cos(Q1.theta);
        y1= Q1.r*sin(Q1.theta);
        z1= Q1.z;
        % 转换Q2的坐标为直角坐标
        x2= Q2.r*cos(Q2.theta);
        y2= Q2.r*sin(Q2.theta);
        z2= Q2.z;
    else  % 若为直角坐标格式
        % 转换Q1的坐标为直角坐标
        x1= Q1.x;
        y1= Q1.y;
        z1= Q1.z;
        % 转换Q2的坐标为直角坐标
        x2= Q2.x;
        y2= Q2.y;
        z2= Q2.z;
    end  % 第二层if结束,结束三维坐标转换
elseif  length(PointForm)==2  % 若为二维点
    if  strcmp(PointForm(1),'r')==1 % 若为极坐标格式,且只支持{'r','theta'}
        % 转换Q1的坐标为直角坐标
        x1= Q1.r*cos(Q1.theta);
        y1= Q1.r*sin(Q1.theta);
        z1= 0;
        % 转换Q2的坐标为直角坐标
        x2= Q2.r*cos(Q2.theta);
        y2= Q2.r*sin(Q2.theta);
        z2= 0;
    else  % 若为直角坐标格式
        % 转换Q1的坐标为直角坐标
        x1= Q1.x;
        y1= Q1.y;
        z1= 0;
        % 转换Q2的坐标为直角坐标
        x2= Q2.x;
        y2= Q2.y;
        z2= 0;
    end  % 第二层if结束,结束二维坐标转换
end  % 第一层if结束


d= sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2);  % 计算出两点的距离

end 
% GetDist函数结束