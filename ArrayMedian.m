% P12_4_4
function mu = ArrayMedian(A)
% A为mxn的矩阵
% mu是A中mn歌元素的中值
[m,n]= size(A);
c= sort(A(:));
mu= c(floor((1+m*n)/2));


end
% ArrayMedian函数结束