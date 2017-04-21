function [x y] = RandomWalk2D( n )
% 二维随机游走:机器人从原点(0,0)开始二维平面上随机游走
%   每次步长为1,每步走东或南或西或北概率均为0.25,直到 |x|= n 或 |y|= n
%   x和y为两个行向量,其中(x(k),y(k))表示第k步后机器人所处的位置
%   n为正整数

%初始化步次计数k和当前坐标
k= 0;    xc= 0;    yc= 0;
%随机游走
while  abs(xc)<n && abs(yc)<n
    %当前机器人位于(xc,yc),仿真模拟一步
    r= rand(1);
    if  r<=0.25
        yc= yc+1;    %向北走一步
    elseif  r<=0.5
        xc= xc+1;    %向东走一步
    elseif  r<=0.75
        yc= yc-1;    %向南走一步
    else
        xc= xc-1;    %向西走一步
    end
    %保存本次运动后的坐标
    k= k+1;    x(k)= xc;    y(k)= yc;  
end


end

