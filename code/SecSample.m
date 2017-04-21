function [f0,fd0,f] = SecSample(x,y,y_1,x0)
% 求已知数据点的二次样条插值多项式及其插值点处的值
% 已知数据点的x坐标:  x
% 已知数据点的y坐标:  y
% 已知数据点的导数向量:  y_1
% 插值点的x坐标:  x0
% 求得的分段三次埃尔米特插值多项式:  f
% 求得的x0处的插值:  f0
% 求得的x0处的导数的插值:  fd0

syms t;
f= 0.0;
f0= 0.0;
if  length(x)==length(y)
    if  length(y)==length(y_1)
        n= length(x);
    else
        disp('y和y_1的维数不相等!');
        return;
    end  % 第二层if结束
else
    disp('x和y的维数不相等!');
    return;
end  % 第一层if结束                                 % 检错

for  i= 1:n
    if  x(i)<=x0 && x(i+1)>=x0
        index= i;
        break;
    end  % if结束
end  % for结束                                     % 找到x0所在区间

d= y_1(1)*(x(2)-x(1))/2+y(1);
for  i= 2:n-1
    d= d + y_1(i)*(x(i+1)-x(i-1))/2;
end  % for结束

h= x(index+1)-x(index);
f= y_1(index+1)*(t-x(index))^2/(2*h)+...
      y_1(index)*(t-x(index+1))^2/(2*h)+d;         % x0所在区间的插值函数
fd= (t-x(index))*y_1(index+1)/h+y_1(index)*(x(index+1)-t)/h;
                                                   % x0所在区间的插值函数的导数
f0= double(subs(f,'t',x0));                        % x0处的插值
fd0= double(subs(fd,'t',x0));                      % x0处的导数插值
end
% SecSample函数结束