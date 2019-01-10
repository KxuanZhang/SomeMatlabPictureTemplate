clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [71.7	64.8	66.55	57.9	19]
a2 = [74.5	72.75	70.95	63.3	32.2]
b1 = [59.4	67.55	61.6	57.05	18.5]
b2 = [78.6	76	69.45	60.4	38.85]
c1 = [20.6	23.5	24.5	25	19]
c2 = [30.8	34.7	28.2	28.5	19]
% d1 = [0.825	1.03	1.23	1.075	0.85]
% d2 = [0.8335	1.03	1.23	1.2425	1.244]
base = [4	3.6	12	15.5	19]
x = 5 : 20 : 85
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r--square', 'LineWidth',lw ,'color', [146 208 80]/255)
aa2 = plot(x, a2 , 'r-square', 'LineWidth',lw ,'color', [146 208 80]/255)
bb1 = plot(x, b1  ,'g--diamond', 'LineWidth',lw,'color', [252 25 35]/255)
bb2 = plot(x, b2 , 'g-diamond', 'LineWidth',lw ,'color', [252 25 35]/255)
cc1 = plot(x, c1 , 'm--*', 'LineWidth',lw,'color', [97 20 209]/255)
cc2 = plot(x, c2 , 'm-*', 'LineWidth',lw ,'color', [97 20 209]/255 )
% dd1 = plot(x, d1 , 'b--o', 'LineWidth',lw,'color', [92 230 249]/255)
% dd2 = plot(x, d2 , 'b-o', 'LineWidth',lw,'color', [92 230 249]/255)
base = plot(x, base, 'y-^', 'LineWidth',lw,'color', [255 167 10]/255)

set(gca, 'XLim', [0 90], 'Fontsize' ,12)
set(gca , 'YTick',[0:  10 : 100]);%设置要显示坐标刻度
set(gca,'YLim',[0  100]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85] , 'Fontsize' ,12)

% title('DRAM utilization of redis with BE Tasks', 'FontSize' , 13)
xlabel('% of load' , 'Fontsize' ,12)
ylabel('Mem Bandwidth utilization rate%' , 'Fontsize' ,12)
set(gcf,'position',[200 200 500 300])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.15 0.18 0.8 0.78],'box','off')
 %legend content
% legend1 = legend([aa1,aa2,bb1], 'llc-Heracles','llc-Hebe','dram-Heracles')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [bb2, cc1, cc2] ,'dram-Hebe', 'lstm-Heracles', 'lstm-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [base] ,'baseline')
% %legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.01, .13,.531, .038],'box','off', 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' , 'Fontsize' ,10);
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.55 , .13,.531, .038],'box','off', 'Fontsize' ,10 );
