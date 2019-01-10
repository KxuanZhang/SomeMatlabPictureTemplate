clc
clear
a1 = [0.064342857	0.1072	0.116	0.116	0.1224	0.108	0.0664	0.1572 ]
b1 = [0.112685714	0.088	0.048	0.1088	0.1664	0.2236	0.1668	0.4072 ]
c1 = [0.015257143	0.0432	0.0112	0.0136	0.0104	0.0084	0.0088	0.0112]
d1 = [0.078605088	0.24347752	0.343636801	0.343850385	0.322187411	0.349654738	0.440958263	0.606470497 ]
e1 = [15 	18 	 25  33 	38 	62 	72 	93 ]
% all = [0.12 	0.12 	0.11 	0.12 	0.13 	0.13 	0.14 	0.13 
% 6.65 	7.93 	8.33 	13.66 	16.86 	18.90 	21.42 	26.96 
% 2.07 	2.50 	2.60 	2.61 	2.88 	3.12 	3.50 	3.81 
% 0.81 	0.86 	7.34 	9.39 	10.42 	31.30 	38.22 	75.26 
% ]
% a1 = all(1,:)
% b1 = all(2, :)
% c1 = all(3, :)
% d1 = all(4, :)
% e1 = all(5, :)
a = [a1 ; b1 ; c1 ; d1 ]
a = a'
 
% for i = 1 : 8
%   add =  sum(a(i ,:)) 
%   a(i , :) = a(i , :) ./ add
% end
b=a
axes1 = axes('YGrid','on')
hold(axes1, 'on')
c = bar(b  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [56 56 249  ]/255)
set(c(2),'FaceColor',  [215 120 120]/255)
set(c(3),'FaceColor',  [255 215 0]/255)
set(c(4),'FaceColor', [178 178 178]/255 )




set(gca,'YLim',[0  1.4]);%X轴的数据显示范围
set(gca,'YTick',[0: .2: 1.4]);%设置要显示坐标刻度
set(gca,'XLim',[0.6  8.4]);%X轴的数据显示范围
set(gca , 'XTick', [1 : 8] , 'Fontsize' ,16)
 set(gca,'xticklabels',{'1','13','25','37','49','61','73','85'});
%   set(gca,'yticklabels',{'0', '10' ,'20' , '30' ,'40', '50', '60','70', '80', '90', '100'});


h = gca;

% set(h ,'XTickLabelRotation', 45	)
% th=rotateticklabel(h, 45);%调用下面的函数，坐标倾斜45度
% title('result in redis-cluster with realLoad', 'FontSize',13)
xlabel('% of max load ' , 'Fontsize' ,16)
ylabel('Coefficient of Variation' , 'Fontsize' ,16)
 set(gcf,'position',[200 200 400 300])
 set(gca,'units','normalized','position',[0.16 0.22 0.69 0.76],'box','off')

 legend1 = legend([c(1), c(2) c(3) c(4)], 'haproxy','tomcat','amoeba','mysql', 'Fontsize' ,16 )
%  set(legend1,...
%     'Orientation'	,'ho' , 'Location', 'southoutside','Position',[.24, .08,.531, .038],'box','off', 'Fontsize' ,12	);

e1 = [15 	18 	 25  33 	38 	62 	72 	93 ]
hold on 
% x = [1 13 25 37 49 61 73 85  ]
x= 1:8
lw = 2.25
yyaxis right
ee1 = plot(x, e1, '-+', 'LineWidth',lw,'color', [0 0 0  ]/255)
ylabel('Latency (ms)')
  set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
% set(gca,)