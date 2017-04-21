function DrawFlag(a,b,L1,W1,L2,r1,r2)
%�ڵ�ǰ���ڻ�13������ǣ�����������������׺�������ɫ��䣬��������ͬ�Ŀ��
%���迪��hold on. 
%���ĳ�L1,���Ŀ�W1,������ɫ��L2,����Ȧ�İ뾶r1,�������ǵİ뾶r2
%��a,b��Ϊ�������½�����

s= W1/13; %�������
%������
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

%����ɫ����
DrawRect(a, b+6*s, L2, 7*s, 'b')
%������
xc= a+L2/2;         yc= b+9.5*s;
theta= 2*pi/13;     phi= pi/2;
for  k= 0:12
    %������k������
    angle= k*theta+phi;
    DrawStar( xc+r1*cos(angle), yc+r1*sin(angle), r2, 'w')
end
