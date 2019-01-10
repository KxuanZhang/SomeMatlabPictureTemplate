clc
clear
load interfence1;
set(gcf,'position',[200 200 500 300])
set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')

subplot(7,1,1)
%a=bar(interfence1(1,:))
b=diag(interfence1(1,:));
axes1 = axes('YGrid','on')
hold(axes1, 'on')
c = bar(b  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [248 167 16]/255)
set(c(2),'FaceColor', [248 167 16]/255)
set(c(3),'FaceColor',  [248 167 16]/255)
set(c(4),'FaceColor',  [248 167 16]/255)
set(c(5),'FaceColor',[107 162 243]/255)
set(c(6),'FaceColor',[107 162 243]/255)
set(c(7),'FaceColor',[107 162 243]/255)
set(c(8),'FaceColor',[107 162 243]/255)
set(c(9),'FaceColor',[181 248 95]/255)
set(c(10),'FaceColor',[181 248 95]/255)
set(c(11),'FaceColor',[181 248 95]/255)
% 
% set(gca,'YLim',[0  .5]);%X轴的数据显示范围
% set(gca,'YTick',[0:0.05: .5]);%设置要显示坐标刻度
% set(gca , 'XTick', [1: 1: 11] , 'Fontsize' ,10)
% set(gca,'xticklabels',{'EMU-llc','EMU-dram','EMU-stress','EMU-lstm','CPU-llc','CPU-dram','CPU-stress','CPU-lstm','memBw-llc','memBw-dram','memBw-lstm'});
%  set(gca,'yticklabels',{0, 5 ,10 , 15 ,20,25,30,35,40,45,50});
title('llc')
subplot(7,1,2)
bar(interfence1(2,:))
title('llc')
subplot(7,1,3)
bar(interfence1(3,:))
subplot(7,1,4)
bar(interfence1(4,:))
subplot(7,1,5)
bar(interfence1(5,:))
subplot(7,1,6)
bar(interfence1(6,:))
subplot(7,1,7)
bar(interfence1(7,:))
%figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

% axes1 = axes('Parent',figure1,'YGrid','on');
% box(axes1,'on');
% hold(axes1,'all');
% a1 = [78.52	 78.303	 78.71	 78.3	77.47]
% a2 = [78.47	78.856	78.94	78.94	78.465]
% a3 = [78.3	79.04	78.72	78.346	78.1]
% a4 = [78.876	79.02	79.01	78.82	78.3]
% a5 = [78.9	79.23	78.76	78.59	77.35]
% a6 = [79.07	79.54	79.06	78.96	78.1]
% a7 = [79.759  79.86  79.707  78.007  78]
% a8 = [80.19  80.34  80.276  80.07  80]
% A = [a1 ;a2 ; a3 ; a4 ; a5 ; a6 ;a7 ; a8]
% A = A'
% subplot(3,1,1)
% c  = bar(A, 'BarWidth', 1.1)
% set(c(1) , 'Facecolor', [110 210  155]/255)
% set(c(2) , 'Facecolor', [0 176 80]/255)
% set(c(3) , 'Facecolor', [174 137 201]/255)
% set(c(4) , 'Facecolor', [112 48 160]/255)
% set(c(5) , 'Facecolor', [110 174 219]/255)
% set(c(6) , 'Facecolor', [0 112 192]/255)
% set(c(7) , 'Facecolor', [255 219 110]/255)
% set(c(8) , 'Facecolor', [255 192   0]/255)
% subplot(3,1,2)
% b  = bar(A, 'BarWidth', 1.1)
% set(b(1) , 'Facecolor', [110 210  155]/255)
% set(b(2) , 'Facecolor', [0 176 80]/255)
% set(b(3) , 'Facecolor', [174 137 201]/255)
% set(b(4) , 'Facecolor', [112 48 160]/255)
% set(b(5) , 'Facecolor', [110 174 219]/255)
% set(b(6) , 'Facecolor', [0 112 192]/255)
% set(b(7) , 'Facecolor', [255 219 110]/255)
% set(b(8) , 'Facecolor', [255 192   0]/255)
%  subplot(3,1,3)
% d  = bar(A, 'BarWidth', 1.1)


