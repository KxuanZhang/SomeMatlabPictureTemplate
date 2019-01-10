clc
clear

figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1=[0.097193279	0.157193279	0.24347752	0.201776068	0.303636801	0.326003405	0.343850385	0.354953057	0.322187411	0.342427362	0.349654738	0.304334184	0.471671576	0.480958263	0.494745887	0.586470497	0.640585967]

%a1 = [0.097193279	0.24347752	0.201776068	0.303636801	0.326003405	0.343850385	0.354953057	0.322187411	0.342427362	0.349654738	0.304334184	0.471671576	0.480958263	0.494745887	0.586470497	0.640585967]
b1 =[0.3664954 0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954	0.3664954]
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
