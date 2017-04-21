function d_min = Pt2LineSeg(a,b,x1,y1,x2,y2)
% d_min为点(a,b)到由(x1,y1)与(x2,y2)确定的线段的最短距离长度
t_min= ((x2-x1)*(a-x1) + (y2-y1)*(b-y1))/((x1-x2)^2 + (y1-y2)^2);

if  0<=t_min && t_min<=1
    tStar= t_min;
elseif t_min<0
    tStar= 0;
else
    tStar= 1;
end

xStar= x1+tStar*(x2-x1);
yStar= y1+tStar*(y2-y1);
d_min= sqrt((a-xStar)^2+(b-yStar)^2);

end
% Pt2LineSeg函数结束