clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [0.13	0.15	0.12	0.12	0.053	0.097	0.1488	0.16	0.1764	0.229	0.2436	0.22	0.1868	0.21	0.4572	0.65	0.62
]
b1 =0.02+[0.24 0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24	0.24]
 b1  = b1 + 0.03

x = 3 :6 :100
hold on
lw = 2.25
%y?=?0.0271x?+?0.1366 
xx = 3 : .5 : 100
yy = 0.027 * xx + 0.1366
aa1 = plot(x, a1 ,'b-+', 'LineWidth',lw  ,'MarkerSize',10, 'color',[0 0 255]/255)
bb1 = plot(x, b1  ,'r:', 'LineWidth',lw , 'color',[ 255 0 0]/255)
% cc1 = plot(xx, yy, 'k-', 'LineWidth',lw)


set(gca , 'YTick',[0 : .1 : 0.8]);%设置要显示坐标刻度
set(gca,'YLim',[0  0.8]);%X轴的数据显示范围
set(gca,'XLim',[0 100]);%X轴的数据显示范围
set(gca , 'XTick', [0 10 20 30 40 50 60 70 80 90] , 'Fontsize' ,22)

% title( 'diff threadhold ' ,'Fontsize', 13)
xlabel('% of max load', 'Fontsize' ,22)
ylabel('Coefficient of variation', 'Fontsize' ,22)

  set(gcf,'position',[200 200 500 500])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.19 0.19 0.79 0.76],'box','off')
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %legend content
legend1 = legend([aa1 ,bb1], 'variation value', 'mean')
ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ cc1, dd1] ,'stress' , 'iperf' )
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [ee1 , base],'lstm' , 'base')
%legend位置
% set(legend1,...   'Orientation'	,'ho' , 'Location', 'southoutside','Position',[.24, .08,.531, .038],'box','off', 'Fontsize' ,10	);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.5 , .13,.531, .038],'box','off' );
