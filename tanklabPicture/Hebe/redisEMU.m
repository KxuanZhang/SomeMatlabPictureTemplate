clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [0.594	0.8245	1.0225	1.225	0.85]
a2 = [0.8025	1.02375	1.1175	1.30875	1.05375]
b1 = [0.441	0.648	0.84	1.04	0.85]
b2 = [0.536	0.736	0.904	1.12	1.1365]
c1 = [0.62	0.64	0.7	0.85	0.85]
c2 = [0.62	0.73	0.83	0.9	1.11]
d1 = [0.825	1.03	1.23	1.075	0.85]
d2 = [0.8335	1.03	1.23	1.2425	1.244]
base = [0.05	0.25	0.45	0.65	0.85]
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


set(gca , 'YTick',[0:  .2 : 1.4]);%设置要显示坐标刻度
set(gca , 'XTick', [ 5 25 45 65 85] , 'Fontsize' ,12)
set(gca, 'XLim', [0 90], 'Fontsize' ,12)
set(gca, 'YLim', [ 0 1.4], 'Fontsize' ,12)
% title('EMU of redis with BE Tasks', 'FontSize' , 13)
xlabel('% of load' , 'Fontsize' ,12)
ylabel('EMU' , 'Fontsize' ,12)
set(gcf,'position',[200 200 500 300])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.15 0.18 0.8 0.78],'box','off')
 %legend content
% legend1 = legend([aa1,aa2,bb1], 'llc-Heracles    ','llc-Hebe    ','dram-Heracles')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [bb2, cc1, cc2] ,'dram-Hebe    ', 'lstm-Heracles    ', 'lstm-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [dd1, dd2 , base],'stress-Heracles ', 'stress-Hebe  ' ,'baseline')
%legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.0, .13,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.31, .13,.531, .038],'box','off', 'Fontsize' ,10 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.59 , .13,.531, .038],'box','off', 'Fontsize' ,10 );

