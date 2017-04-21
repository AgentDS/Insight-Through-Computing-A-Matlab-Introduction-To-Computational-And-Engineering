% P10_1_9
function d= GetDist(Q1,Q2)
% Q1,Q2��Ϊ�ṹ,��ʾ������
% Q1,Q2��Ϊ�õѿ�������,������,������Ķ�ά�����ά��,����ʽ����һ��
% dΪQ1,Q2��ŷ�Ͼ���
PointForm= fieldnames(Q1); 

if  length(PointForm)==3  % ��Ϊ��ά��
    if  strcmp(PointForm(1),'rho')==1  % ��Ϊ�������ʽ,��ֻ֧��{'rho','theta','phi'}
        % ת��Q1������Ϊֱ������
        x1= Q1.rho*sin(Q1.theta)*cos(Q1.phi);
        y1= Q1.rho*sin(Q1.theta)*sin(Q1.phi);
        z1= Q1.rho*cos(Q1.theta);
        % ת��Q2������Ϊֱ������
        x2= Q2.rho*sin(Q2.theta)*cos(Q2.phi);
        y2= Q2.rho*sin(Q2.theta)*sin(Q2.phi);
        z2= Q2.rho*cos(Q2.theta);
    elseif  strcmp(PointForm(1),'r')==1  % ��ΪԲ�������ʽ,��ֻ֧��{'r','theta','z'}
        % ת��Q1������Ϊֱ������
        x1= Q1.r*cos(Q1.theta);
        y1= Q1.r*sin(Q1.theta);
        z1= Q1.z;
        % ת��Q2������Ϊֱ������
        x2= Q2.r*cos(Q2.theta);
        y2= Q2.r*sin(Q2.theta);
        z2= Q2.z;
    else  % ��Ϊֱ�������ʽ
        % ת��Q1������Ϊֱ������
        x1= Q1.x;
        y1= Q1.y;
        z1= Q1.z;
        % ת��Q2������Ϊֱ������
        x2= Q2.x;
        y2= Q2.y;
        z2= Q2.z;
    end  % �ڶ���if����,������ά����ת��
elseif  length(PointForm)==2  % ��Ϊ��ά��
    if  strcmp(PointForm(1),'r')==1 % ��Ϊ�������ʽ,��ֻ֧��{'r','theta'}
        % ת��Q1������Ϊֱ������
        x1= Q1.r*cos(Q1.theta);
        y1= Q1.r*sin(Q1.theta);
        z1= 0;
        % ת��Q2������Ϊֱ������
        x2= Q2.r*cos(Q2.theta);
        y2= Q2.r*sin(Q2.theta);
        z2= 0;
    else  % ��Ϊֱ�������ʽ
        % ת��Q1������Ϊֱ������
        x1= Q1.x;
        y1= Q1.y;
        z1= 0;
        % ת��Q2������Ϊֱ������
        x2= Q2.x;
        y2= Q2.y;
        z2= 0;
    end  % �ڶ���if����,������ά����ת��
end  % ��һ��if����


d= sqrt((x1-x2)^2+(y1-y2)^2+(z1-z2)^2);  % ���������ľ���

end 
% GetDist��������