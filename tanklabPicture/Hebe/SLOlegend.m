clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');

a1 = [0.45	0.706	0.735	0.85	0.864]
b1 = [0.53	0.68	0.65	0.75	0.95]
c1 = [0.428	0.676	0.681	0.875	0.849]
d1 = [0.29601	0.4301	0.59455	0.623645	0.90574]
e1 = [0.408595	0.567985	0.616055	0.676775	0.9694]
base = [0.2783	0.36685	0.4554	0.6072	0.759]
x = 5 : 20 : 85
hold on
lw = 2.25
aa1 = plot(x, a1 ,'r-square', 'LineWidth',lw ,'color', [146 208 80]/255)
bb1 = plot(x, b1  ,'g--diamond', 'LineWidth',lw,'color', [252 25 35]/255)
cc1 = plot(x, c1 , 'm-*', 'LineWidth',lw,'color', [97 20 209]/255)
dd1 = plot(x, d1 , 'b-o', 'LineWidth',lw,'color', [0 176 240]/255)
ee1 = plot(x, e1, '--+', 'LineWidth',lw,'color', [92 130 181]/255)
base = plot(x, base, 'y--^', 'LineWidth',lw,'color', [255 167 10]/255)

set(gca, 'XLim', [0 90], 'Fontsize' ,22)
set(gca , 'YTick',[0.2:  .1 : 1]);%设置要显示坐标刻度
set(gca,'YLim',[0.2  1]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85], 'Fontsize' ,22)
 set(gca,'yticklabels',{'20' , '30' ,'40', '50', '60','70', '80', '90', '100'});

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('% of max load', 'Fontsize' ,22)
ylabel('Tail-latency (% of SLO)', 'Fontsize' ,22)
 set(gcf,'position',[200 200 1300 500])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.19 0.50 0.2 0.2],'box','off')
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %legend content
% legend1 = legend([aa1 ,bb1], 'stream-llc', 'stream-dram')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ cc1, dd1] ,'cpu-stress' , 'iperf' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [ee1 , base],'lstm' , 'baseline')
%  set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.1, .09,.531, .038],'box','off', 'Fontsize' ,22	);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .09,.531, .038],'box','off', 'Fontsize' ,22 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.5 , .09,.531, .038],'box','off', 'Fontsize' ,22 );

 