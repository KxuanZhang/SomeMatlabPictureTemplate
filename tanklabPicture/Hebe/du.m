clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');

a1 = [0.11 	0.12 	0.12 	0.12 	0.13 	0.13 	0.13 	0.14 ]
b1 = [6.65 	7.93 	8.33 	13.66 	16.86 	18.9 	21.42 	26.96 ]
c1 = [2.07 	2.5 	2.6 	2.61    2.88 	3.12 	3.5 	3.81 ]
d1 = [0.81 	0.86 	7.34 	9.39 	10.42 	31.3 	38.22 	55.26 ]
e1 = [15 	18 	 25  33 	38 	62 	72 	93 ]
% base = [0.38	0.51	0.608	0.72	0.825]
x = [1 13 25 37 49 61 73 85  ]
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r-square', 'LineWidth',lw ,'color',[56 56 249  ]/255  )
bb1 = plot(x, b1  ,'g-diamond', 'LineWidth',lw,'color', [215 120 120]/255)
cc1 = plot(x, c1 , 'm:', 'LineWidth',lw,'color',[255 215 0]/255 )
dd1 = plot(x, d1 , 'b:o', 'LineWidth',lw,'color', [178 178 178]/255 )
ee1 = plot(x, e1, '-+', 'LineWidth',lw,'color', [0 0 0  ]/255)
% base = plot(x, base, 'y-^', 'LineWidth',lw,'color', [255 167 10]/255)


set(gca , 'YTick',[0: 10:  120]);%设置要显示坐标刻度
set(gca,'YLim',[0  100]);%X轴的数据显示范围
set(gca,'XLim',[0  90]);%X轴的数据显示范围
set(gca , 'XTick', [1 13 25 37 49 61 73 85  ] , 'Fontsize' ,16)

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('% of max load', 'Fontsize' ,16)
ylabel('Duration (ms)', 'Fontsize' ,16)
 set(gcf,'position',[200 200 400 300])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.14 0.22 0.85 0.75],'box','off')
 set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %legend content
legend1 = legend([aa1 ,bb1 ,cc1, dd1,ee1  ], 'Haproxy', 'Tomcat' ,'Amoeba' , 'Mysql'  , '99th')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ cc1, dd1] ,'amoeba' , 'mysqld' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [ee1 ], '99th', 'visible','off')
%legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.05, .08,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.25, .08,.531, .038],'box','off' , 'Fontsize' ,10);
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.45, .08,.531, .038],'box','off', 'Fontsize' ,10 );


