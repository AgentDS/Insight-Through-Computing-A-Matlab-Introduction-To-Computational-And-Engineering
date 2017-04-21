function [y, TotalC, TotalS]= BubbleSort(x)
% 对长度为n的列向量x进行冒泡排序
% y为排序后的长度为n的递增序列
% TotalC为比较的总次数
% TotalS为交换的总次数
n= length(x);
TotalC= 0;    TotalS= 0;
k= 1;
while  (k==1 || S>0) && k<=n-1      % 当 S==0 时,说明后面的数组已有序,无需再排序
    [x(k:n),C,S]= Bubble(x(k:n));
    k= k+1;
    TotalC= TotalC+C;
    TotalS= TotalS+S;
end  % while语句结束

y= x;

end
% BubbleSort函数结束