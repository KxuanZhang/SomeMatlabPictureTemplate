clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a = csvread('data_5.csv',1,0)
a1 = a
a1 = a1./ 2e4
x = 1:  6 : 115
hold on
lw = 2.25
aa1 = plot( a1 ,'r-', 'LineWidth',lw ,'color', [5 61 225]/255)



set(gca , 'YTick',[0:.2:1 ]);%设置要显示坐标刻度
set(gca,'YLim',[0  1]);%X轴的数据显示范围
set(gca,'XLim',[1  120]);%X轴的数据显示范围
set(gca , 'XTick', [0 24 48 72 96 120] , 'Fontsize' ,22)
 set(gca,'yticklabels',{'0' ,'20'  ,'40',  '60', '80', '100'});
 
  
xlabel('time (hour)' , 'Fontsize' ,22)
ylabel('% of max load' , 'Fontsize' ,22)
%set the position of figure and axis 
 set(gcf,'position',[200 200 500 370])
 %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.19 0.24 0.76 0.72],'box','off')
 set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 %legend content
% legend1 = legend([aa1,aa2,bb1], 'LLC-Heracles','LLC-Hebe','DRAM-Heracles')
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [bb2, cc1, cc2] ,'DRAM-Hebe', 'LSTM-Heracles', 'LSTM-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [dd1, dd2 , base],'stress-Heracles', 'stress-Hebe' ,'baseline')
%legend位置
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.03, .13,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.3, .13,.531, .038],'box','off' , 'Fontsize' ,10 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.57 , .13,.531, .038],'box','off' , 'Fontsize' ,10 );
