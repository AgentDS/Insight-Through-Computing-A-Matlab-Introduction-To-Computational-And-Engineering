function ShowRect(R,s)
% R为一个矩形
% s为用于颜色参数,如'r','k'或rgb向量
% 用颜色s来呈现矩形R
% 假定已开启hold on
fill([R.left R.right R.right R.left],[R.bot R.bot R.top R.top],s)
plot([R.left R.right R.right R.left],[R.bot R.bot R.top R.top],'k','Linewidth',2)


end
% ShowRect函数结束