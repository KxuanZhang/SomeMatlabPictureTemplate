clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);
axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');

hold(axes1,'all');
a2 = [30.85	35.735	36.65	40.135	25.44]
a1 = [27.47	31.59	33.8	35.24	11.73]
b2 = [25	28.25	28.9	30.35	22.775]
b1 = [20.88	23.615	24.79	26.51	11.785]
c2 = [74.48	71.13	64.28	56.53	45.305]
c1 = [74.8695	57.972	51.1845	52.2485	12.4005]
d2 = [79.77	82.13	83.905	67.27	48.45]
d1 = [65.235	81.75	83.6	49.8	11.8]
base = [0.6825	2.5965	3.9265	5.7015	6.4065]
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



set(gca , 'YTick',[0:  10 : 100] );%设置要显示坐标刻度
set(gca,'YLim',[0  100]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85])
set(gca, 'XLim', [0 90], 'Fontsize' ,12)

% title( 'CPU utilization of redis with BE Tasks' ,'Fontsize', 13)
xlabel('% of load', 'Fontsize' ,12)
ylabel('CPU utilization rate %', 'Fontsize' ,12)

%set the position of figure and axis 
 set(gcf,'position',[200 200 500 350])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.15 0.38 0.8 0.6],'box','off')
 %legend content
legend1 = legend([aa1,aa2,bb1 , bb2 ,cc1 ,cc2 , dd1, dd2 , base], 'llc-Heracles','llc-Hebe','dram-Heracles' ,'dram-Hebe', 'lstm-Heracles', 'lstm-Hebe','stress-Heracles', 'stress-Hebe' ,'baseline')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah,  [bb2, cc1, cc2] ,'dram-Hebe', 'lstm-Heracles', 'lstm-Hebe' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [dd1, dd2 , base],'stress-Heracles', 'stress-Hebe' ,'baseline')
%legend位置
set(legend1,...
    'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.02, .13,.531, .038],'box','off'	, 'Fontsize' ,10);

