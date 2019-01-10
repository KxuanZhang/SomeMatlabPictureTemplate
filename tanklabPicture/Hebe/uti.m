clc
clear
num = xlsread('1.xlsx', 'sheet4' , 'E361:F541')
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');

a1 = num(:, 1)'
b1 = num(:,2)'
% c1 = [1.29 	1.56 	1.62 	1.63 	1.80 	1.95 	2.19 	2.38 ]
% d1 = [2.38 	3.66 	4.59 	5.87 	7.76 	11.44 	15.76 	25.16 ]
% e1 = [10 	12 	14 	16 	21 	28 	34 	46 ]
% base = [0.38	0.51	0.608	0.72	0.825]
x = 0:180
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r-', 'LineWidth',lw ,'color', [5 61 225]/255)
bb1 = plot(x, b1  ,'g-', 'LineWidth',lw,'color', [255 0 0]/255)
% cc1 = plot(x, c1 , 'm-*', 'LineWidth',lw,'color', [165 165 165]/255)
% dd1 = plot(x, d1 , 'b-o', 'LineWidth',lw,'color', [255 192 0]/255)
% ee1 = plot(x, e1, '-+', 'LineWidth',lw,'color', [112 173 71]/255)
% base = plot(x, base, 'y-^', 'LineWidth',lw,'color', [255 167 10]/255)


set(gca , 'YTick',[0: 20:  100]);%设置要显示坐标刻度
set(gca,'YLim',[0  100]);%X轴的数据显示范围
 set(gca,'XLim',[0 192])
 set(gca , 'XTick',0:36:180 , 'Fontsize' ,22)

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('sample points', 'Fontsize' ,22)
ylabel('CPU utilization (%)', 'Fontsize' ,22)
 set(gcf,'position',[200 200  500 370])
 
set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.19 0.24 0.76 0.72],'box','off')
legend1 = legend([aa1 ,bb1], 'Hebe', 'Heracles')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ cc1, dd1] ,'amoeba' , 'mysqld' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [ee1 ], '99th', 'visible','off')
%legend位置
% set(legend1,...
%     'Orientation'	,'ho' , 'Location', 'southoutside','Position',[.25, .13,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.5 , .13,.531, .038],'box','off' );
% 
