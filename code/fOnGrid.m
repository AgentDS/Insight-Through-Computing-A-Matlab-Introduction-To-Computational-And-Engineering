function fVals = fOnGrid(x,y,f)
% xΪnx1��������
% yΪmx1��������
% f��һ�����������������к�������ĺ������
% fVals��һ��mxn�ľ���, �� fVals(i,j)= f(x(j),y(i))
n= length(x);    m= length(y);
fVals= zeros(m,n);

for  j= 1:n
    for  i= 1:m
        fVals(i,j)= f(x(j),y(i));
    end % �ڶ���for����
    
end  % ��һ��for����

end
% fOnGrid��������