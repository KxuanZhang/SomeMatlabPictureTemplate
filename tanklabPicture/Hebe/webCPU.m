clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a2 = [32.65	32.32	32.24	27.79	19.03]
a1 = [26.08	27.02	31.16	24.54	14.86]
b2 = [26.92	28.7	29.28	24.835	20.625]
b1 = [24.97	22.46	19.98	20.295	14.32]
c2 = [68.69	66.935	64.39	60.42	40.85]
c1 = [66.238	65.955	63.14	55.73	13.66]
d2 = [78.76	79.825	51.17	44.715	25.885]
d1 = [78.635	76.655	45.315	37.795	15.04]
base = [1.48	5.78	7.9	11.18	14.14]
x = 5 : 20 : 85
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r--square', 'LineWidth',lw ,'color', [146 208 80]/255)
aa2 = plot(x, a2 , 'r-square', 'LineWidth',lw ,'color', [146 208 80]/255)
bb1 = plot(x, b1  ,'g--diamond', 'LineWidth',lw,'color', [252 25 35]/255)
bb2 = plot(x, b2 , 'g-diamond', 'LineWidth',lw ,'color', [252 25 35]/255)
cc1 = plot(x, c1 , 'm--*', 'LineWidth',lw,'color', [97 20 209]/255)
cc2 = plot(x, c2 , 'm-*', 'LineWidth',lw ,'color', [97 20 209]/255 )
dd1 = plot(x, d1 , 'b--o', 'LineWidth',lw,'color', [0 176 240]/255)
dd2 = plot(x, d2 , 'b-o', 'LineWidth',lw,'color', [0 176 240]/255)
base = plot(x, base, 'y-^', 'LineWidth',lw,'color', [255 167 10]/255)

set(gca, 'XLim', [0 90], 'Fontsize' ,12)
set(gca , 'YTick',[0:  10 : 100]);%设置要显示坐标刻度
set(gca,'YLim',[0  100]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85] , 'Fontsize' ,12)

% title( 'CPU utilization of webServer with BE Tasks' ,'Fontsize', 13)
xlabel('% of load' , 'Fontsize' ,12)
ylabel('CPU utilization rate %' , 'Fontsize' ,12)
%set the position of figure and axis 
set(gcf,'position',[200 200 500 300])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.15 0.18 0.8 0.78],'box','off')
 %legend content
% legend1 = legend([aa1,aa2,bb1], 'llc-Heracles','llc-Hebe','dram-Heracles')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [bb2, cc1, cc2] ,'dram-Hebe', 'lstm-Heracles', 'lstm-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [dd1, dd2 , base],'stress-Heracles', 'stress-Hebe' ,'baseline')
% %legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.03, .13,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' , 'Fontsize' ,10 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.57 , .13,.531, .038],'box','off' , 'Fontsize' ,10 );