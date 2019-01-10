clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [1.13	1.32	1.29	1.3215	0.87]
a2 = [1.373	1.47	1.653	1.6	1.185]
b1 = [0.812	1.008	1.142	1.2735	0.87]
b2 = [0.875	1.149	1.342	1.344	1.212]
c1 = [0.63	0.89	1.07	1.24	0.87]
c2 = [0.67	0.89	1.1	1.3	1.18]
d1 = [0.8335	1.025	0.908	1.015	0.87]
d2 = [0.833	1.048	0.9814	1.0825	1.058]
base = [0.07	0.27	0.47	0.67	0.87]
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
set(gca,'YLim',[0  1.8]);%X轴的数据显示范围
set(gca , 'YTick',[0:  .2 : 1.8]);%设置要显示坐标刻度
set(gca , 'XTick', [ 5 25 45 65 85] , 'Fontsize' ,12)

% title('EMU of webServer with BE Tasks', 'FontSize' , 13)
xlabel('% of load ' , 'Fontsize' ,12)
ylabel('EMU' , 'Fontsize' ,12)
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
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.02, .13,.531, .038],'box','off', 'Fontsize' ,10	);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off', 'Fontsize' ,10 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.57 , .13,.531, .038],'box','off' , 'Fontsize' ,10);
