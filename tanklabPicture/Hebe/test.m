clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');

a1 = [0.11 	0.12 	0.11 	0.12 	0.11 	0.13 	0.12 	0.12 ]
b1 = [1.34 	2.14 	3.02 	4.47 	5.85 	9.00 	10.58 	13.10 ]
c1 = [1.29 	1.56 	1.62 	1.63 	1.80 	1.95 	2.19 	2.38 ]
d1 = [2.38 	3.66 	4.59 	5.87 	7.76 	11.44 	15.76 	25.16 ]
e1 = [10 	12 	14 	16 	21 	28 	34 	46 ]
% base = [0.38	0.51	0.608	0.72	0.825]
x = [1 13 25 37 49 61 73 85 ]
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r-square', 'LineWidth',lw ,'color', [91 155 213]/255)
bb1 = plot(x, b1  ,'g-diamond', 'LineWidth',lw,'color', [237 125 49]/255)
cc1 = plot(x, c1 , 'm-*', 'LineWidth',lw,'color', [165 165 165]/255)
dd1 = plot(x, d1 , 'b-o', 'LineWidth',lw,'color', [255 192 0]/255)
ee1 = plot(x, e1, '-+', 'LineWidth',lw,'color', [112 173 71]/255)
% base = plot(x, base, 'y-^', 'LineWidth',lw,'color', [255 167 10]/255)


set(gca , 'YTick',[0: 10:  50]);%设置要显示坐标刻度
set(gca,'YLim',[0  50]);%X轴的数据显示范围
set(gca , 'XTick', [1 13 25 37 49 61 73 85 ])

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('% of load')
ylabel('duration time /ms')
%set the position of figure and axis 
 set(gcf,'position',[200 200 500 350])
%  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.15 0.3 0.8 0.66],'box','off')
 %legend content
legend1 = legend([aa1 ,bb1], 'haproxy', 'tomcat')
ah = axes('position', get(gca,'position'),'visible','off')
legend2 = legend(ah, [ cc1, dd1] ,'amoeba' , 'mysqld' )
ah2 = axes('position', get(gca,'position'),'visible','off')
legend3 = legend(ah2, [ee1 ], '99th', 'visible','off')
%legend位置
set(legend1,...
    'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.1, .11,.531, .038],'box','off'	);
set(legend2,...
    'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .11,.531, .038],'box','off' );
set(legend3,...
    'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.5 , .11,.531, .038],'box','off' );


