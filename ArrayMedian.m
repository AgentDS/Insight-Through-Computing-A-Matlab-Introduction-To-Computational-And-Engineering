% P12_4_4
function mu = ArrayMedian(A)
% AΪmxn�ľ���
% mu��A��mn��Ԫ�ص���ֵ
[m,n]= size(A);
c= sort(A(:));
mu= c(floor((1+m*n)/2));


end
% ArrayMedian��������