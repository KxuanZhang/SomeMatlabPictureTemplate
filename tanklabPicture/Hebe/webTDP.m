clc
clear
 
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
a1 = [78.52	 78.303	 78.71	 78.3	77.47]
a2 = [78.47	78.856	78.94	78.94	78.465]
a3 = [78.3	79.04	78.72	78.346	78.1]
a4 = [78.876	79.02	79.01	78.82	78.3]
a5 = [78.9	79.23	78.76	78.59	77.35]
a6 = [79.07	79.54	79.06	78.96	78.1]
a7 = [79.759  79.86  79.707  78.007  78]
a8 = [80.19  80.34  80.276  80.07  80]
A = [a1 ;a2 ; a3 ; a4 ; a5 ; a6 ;a7 ; a8]
A = A'
c  = bar(A, 'BarWidth', 1.1)
set(gca,'YLim',[76  81]);%X轴的数据显示范围
set(gca,'YTick',[76 :1: 81]);%设置要显示坐标刻度
set(gca,'XLim',[0.5  5.5]);
set(gca , 'XTick', [1: 1: 5] , 'Fontsize' ,22)
set(gca,'xticklabels',{5 ,25 ,45,65,85});

set(c(1) , 'Facecolor', [110 210  155]/255)
set(c(2) , 'Facecolor', [0 176 80]/255)
set(c(3) , 'Facecolor', [174 137 201]/255)
set(c(4) , 'Facecolor', [112 48 160]/255)
set(c(5) , 'Facecolor', [110 174 219]/255)
set(c(6) , 'Facecolor', [0 112 192]/255)
set(c(7) , 'Facecolor', [255 219 110]/255)
set(c(8) , 'Facecolor', [255 192   0]/255)
 
 %set(gcf,'position',[200 200 500 370]) 
 % set(gca,'units','normalized','position',[0.17 0.23 0.80 0.72],'box','off')
  %上面的为标准  下面的为了适应图例
  set(gcf,'position',[200 200 500 500]) 
 set(gca,'units','normalized','position',[0.17 0.30 0.80 0.68],'box','off')
 set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
xlabel('% of max load' , 'Fontsize' ,22)
ylabel('CPU power (% of TDP)', 'Fontsize' ,22)
% legend1 = legend([c(1) , c(2) , c(3) ] , 'llc-Heracles', 'llc-Hebe' , 'dram-Heracles'    )
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [  c(4)  c(5), c(6)]  , 'dram-Hebe', 'stress-Heracles', 'stress-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [  c(7), c(8)],'lstm-Heracles', 'lstm-Hebe')
% ah3 = axes('position', get(gca,'position'),'visible','off')
% % legend4 = legend(ah3, [ c(7), c(8)], 'LSTM-Heracles', 'LSTM-Hebe')
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.02, .13,.531, .038],'box','off' , 'Fontsize' ,22	);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.28, .13,.531, .038],'box','off', 'Fontsize' ,22 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.54 , .13,.531, .038],'box','off', 'Fontsize' ,22 );
% set(legend4,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.58 , .13,.531, .038],'box','off' );
 