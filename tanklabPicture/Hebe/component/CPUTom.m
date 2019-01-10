clc
clear
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all');
all = [26.72	20.21	24.69	12.08	0
35.35	31.3	26.46	19.76	7.94
27.14	18.43	12.2	9.72	0
27.89	23.12	23.26	15.45	12.21
65.69	59.74	55.37	45.3	0
69.34	63.28	58.27	53.84	53.14
77.08	69.9	29.45	28.18	0
77.25	72.6	43.57	33.71	21.53]

a1 = all(1 , :)
a2 = all(2 , :)
a3 = all(3 , :)
a4 = all(4 , :)
a5 = all(5 , :)
a6 = all(6 , :)
a7 = all(7 , :)
a8 = all(8 , :)

A = [a1 ;a2 ; a3 ; a4 ; a5 ; a6 ; a7 ;a8]
A = A'
c  = bar(A, 'BarWidth', 1.1)
set(gca,'YLim',[0  100]);%X轴的数据显示范围
set(gca,'YTick',[0 :20: 100]);%设置要显示坐标刻度
set(gca , 'XTick', [1: 1: 5] , 'Fontsize' ,16)
set(gca,'xticklabels',{5 ,25 ,45,65,85});


set(c(1) , 'Facecolor', [110 210  155]/255)
set(c(2) , 'Facecolor', [0 176 80]/255)
set(c(3) , 'Facecolor', [174 137 201]/255)
set(c(4) , 'Facecolor', [112 48 160]/255)
set(c(5) , 'Facecolor', [110 174 219]/255)
set(c(6) , 'Facecolor', [0 112 192]/255)
set(c(7) , 'Facecolor', [255 219 110]/255)
set(c(8) , 'Facecolor', [255 192   0]/255)
 set(gcf,'position',[200 200 450 300]) %  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
set(gca,'XLim',[0.5  5.5]);%X轴的数据显示范围 
xlabel('% of max load', 'Fontsize' ,16)
ylabel('CPU utilization (%)', 'Fontsize' ,16)
 set(gca,'units','normalized','position',[0.17 0.2 0.8 0.78],'box','off')
 set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
% legend1 = legend([c(1) , c(2) ,c(3) ] , 'llc-Heracles', 'llc-Hebe' , 'dram-Heracles'    )
% ah = axes('position', get(gca,'position'),'visible','off')
% legend2 = legend(ah, [ c(4)  c(5), c(6)  ] , 'dram-Hebe' , 'stress-Heracles', 'stress-Hebe')
% ah2 = axes('position', get(gca,'position'),'visible','off')
% legend3 = legend(ah2, [  c(7), c(8)],  'lstm-Heracles', 'lstm-Hebe')
% ah3 = axes('position', get(gca,'position'),'visible','off')
% % legend4 = legend(ah3, [ c(7), c(8)], 'LSTM-Heracles', 'LSTM-Hebe')
% set(legend1,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.02, .13,.531, .038],'box','off'	, 'Fontsize' ,10);
% set(legend2,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.28, .13,.531, .038],'box','off', 'Fontsize' ,10 );
% set(legend3,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.54 , .13,.531, .038],'box','off' , 'Fontsize' ,10);
% % set(legend4,...
%     'Orientation'	,'vertical' , 'Location', 'southoutside','Position',[.62 , .13,.531, .038],'box','off' );