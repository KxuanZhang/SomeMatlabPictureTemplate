clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');

a1 = [0.5	0.584	0.688	0.96	0.936]
b1 = [0.588	0.8	0.902	0.894	0.868]
c1 = [0.472	0.682	0.84	0.82	0.884]
d1 = [0.408	0.58	0.66	0.764	0.868]
e1 = [0.46	0.72	0.78	0.88	0.958]
base = [0.38	0.51	0.608	0.72	0.825]
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
set(gca , 'YTick',[0.3:  .1 : 1]);%设置要显示坐标刻度
set(gca,'YLim',[0.3  1]);%X轴的数据显示范围
set(gca , 'XTick', [ 5 25 45 65 85] , 'Fontsize' ,22)
 set(gca,'yticklabels',{ '30' ,'40', '50', '60','70', '80', '90', '100'});

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('% of load' , 'Fontsize' ,22)
ylabel('Tail-latency (% of SLO)' , 'Fontsize' ,22)
 set(gcf,'position',[200 200 500 370])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.19 0.22 0.79 0.74],'box','off')
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %legend content
% legend1 = legend([aa1 ,bb1], 'l3', 'memBw')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ cc1, dd1] ,'stress' , 'iperf' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [ee1 , base],'lstm' , 'base')
% %legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.1, .03,.531, .038],'box','off'	, 'Fontsize' ,14);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .03,.531, .038],'box','off', 'Fontsize' ,14 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.5 , .03,.531, .038],'box','off' , 'Fontsize' ,14);