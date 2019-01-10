clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [0.715	0.7065	0.701	0.693	0.28]
a2 = [0.795	0.781	0.78	0.7865	0.4345]
b1 = [0.7345	0.608	0.55	0.512	0.285]
b2 = [0.7775	0.7885	0.6835	0.66	0.4125]
c1 = [0.197	0.1775	0.2295	0.3045	0.28]
c2 = [0.1955	0.2265	0.265	0.324	0.3505]
% d1 = [0.825	1.03	1.23	1.075	0.85]
% d2 = [0.8335	1.03	1.23	1.2425	1.244]
base = [0.05	0.09	0.15	0.22	0.28]
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


set(gca , 'YTick',[0:  .1 : 1]);%设置要显示坐标刻度
set(gca,'YLim',[0  1]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85], 'Fontsize' ,12)
 set(gca,'yticklabels',{'0', '10' ,'20' , '30' ,'40', '50', '60','70', '80', '90', '100'});
 set(gca, 'XLim', [0 90], 'Fontsize' ,12)
% title('DRAM utilization of redis with BE Tasks', 'FontSize' , 13)
xlabel('% of max load', 'Fontsize' ,12)
ylabel('MemBW utilization (%)', 'Fontsize' ,12)
%set the position of figure and axis 
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
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.02, .13,.531, .038],'box','off', 'Fontsize' ,10	);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' , 'Fontsize' ,10);
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.55 , .13,.531, .038],'box','off' , 'Fontsize' ,10);