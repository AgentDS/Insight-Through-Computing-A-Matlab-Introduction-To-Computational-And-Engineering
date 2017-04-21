function DrawFlag(a,b,L1,W1,L2,r1,r2)
%在当前窗口画13颗五角星，七条红横条，六条白横条，颜色相间，并且有相同的宽度
%假设开启hold on. 
%旗帜长L1,旗帜宽W1,角上蓝色块L2,星星圈的半径r1,单个星星的半径r2
%（a,b）为旗帜左下角坐标

s= W1/13; %横条宽度
%画横条
for  k= 1:13
    bk= b + (k-1)*s;
    if  rem(k,2)==1 && k<=6
        DrawRect(a, bk, L1, s, 'r')
    elseif  rem(k,2)==0 && k<=6
        DrawRect(a, bk, L1, s, 'w')
    elseif  rem(k,2)==1 && k>6
        DrawRect(a+L2, bk, L1-L2, s, 'r')
    else
        DrawRect(a+L2, bk, L1-L2, s, 'w')
    end
end

%画蓝色区域
DrawRect(a, b+6*s, L2, 7*s, 'b')
%画星星
xc= a+L2/2;         yc= b+9.5*s;
theta= 2*pi/13;     phi= pi/2;
for  k= 0:12
    %画出第k颗星星
    angle= k*theta+phi;
    DrawStar( xc+r1*cos(angle), yc+r1*sin(angle), r2, 'w')
end
