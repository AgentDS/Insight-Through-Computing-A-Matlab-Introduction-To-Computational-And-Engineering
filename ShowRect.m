function ShowRect(R,s)
% RΪһ������
% sΪ������ɫ����,��'r','k'��rgb����
% ����ɫs�����־���R
% �ٶ��ѿ���hold on
fill([R.left R.right R.right R.left],[R.bot R.bot R.top R.top],s)
plot([R.left R.right R.right R.left],[R.bot R.bot R.top R.top],'k','Linewidth',2)


end
% ShowRect��������