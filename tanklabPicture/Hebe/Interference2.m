clc
clear
 load interfence2 ;
 load interfenceData2; 
 func2;
 fontsize=8;
 ytick=[0 100 200 300 400];
  ytick1=[0 100 200 300 800];
  ylim1=[0 800];
 ylim=[0 400];
 %%
 set(gcf,'position',[200 200 700 550])

subplot(7,1,1)
c = bar(diag(interfence2(1,:))  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [255 192 0]/255)
set(c(2),'FaceColor', [146 208 80]/255)
for i=1:11
set(c(i),'FaceColor',  [146 208 80]/255)
end
for i=13:19
set(c(i),'FaceColor',  [255 0 0]/255)
end
set(c(5),'FaceColor',  [255 0 0]/255)
set(c(7),'FaceColor',  [255 0 0]/255)
set(c(10),'FaceColor',  [255 255 0]/255)
set(c(12),'FaceColor',  [255 192 0]/255)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('Stream\_dram(big)');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(1,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(2,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 
%%
subplot(7,1,2)
c = bar(diag(interfence2(2,:))  , 'stack' ,'BarWidth',0.5)
for i=1:19
set(c(i),'FaceColor',  [146 208 80]/255)
end
set(c(3),'FaceColor',  [255 192 0]/255)
set(c(10),'FaceColor',  [255 192 0]/255)
set(c(14),'FaceColor',  [255 192 0]/255)
set(c(17),'FaceColor',  [255 192 0]/255) 
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度

 title('Stream\_dram(small)');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(3,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(4,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 
%%
subplot(7,1,3)
c = bar(diag(interfence2(3,:))  , 'stack' ,'BarWidth',0.5)
for i=5:19
set(c(i),'FaceColor',  [255 0 0]/255)
end 
set(c(1),'FaceColor',  [255 0 0]/255)
set(c(2),'FaceColor',  [146 208 80]/255)
set(c(3),'FaceColor',  [146 208 80]/255)
set(c(4),'FaceColor',  [255 192 0]/255)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度

 title('Stream\_llc(big)');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(5,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
 
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(6,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);

%%
subplot(7,1,4)
c = bar(diag(interfence2(4,:))  , 'stack' ,'BarWidth',0.5)
for i=1:19
set(c(i),'FaceColor',  [146 208 80]/255)
end  
set(c(10),'FaceColor',  [146 208 80]/255)
set(c(6),'FaceColor',  [255 0 0]/255)
set(c(16),'FaceColor',  [255 0 0]/255) 
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
ylabel('Difference on performance degration (%)')
 title('Stream\_llc(small)');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(7,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(8,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 ylabel('Increase on tail-latency (%)')
%%

subplot(7,1,5)
c = bar(diag(interfence2(5,:))  , 'stack' ,'BarWidth',0.5)
for i=1:19
set(c(i),'FaceColor',  [146 208 80]/255)
end   
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('DVFS');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(9,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(10,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 
%%
subplot(7,1,6)
c = bar(diag(interfence2(6,:))  , 'stack' ,'BarWidth',0.5) 
for i=1:19
    set(c(i),'FaceColor',  [255 0 0]/255)
end
set(c(3),'FaceColor',  [146 208 80]/255)
  
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('Iperf');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(11,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData2(12,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 
%%
subplot(7,1,7)

 plot((1:1:19),interfenceData2(13,:),'-*b','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
%legend('200%~300%');
hold on;
yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData2(14,:),'-*k','LineWidth',1.2,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
hold on;
legend('Tomcat','Mysql')
c = bar(diag(interfence2(7,:))  , 'stack' ,'BarWidth',0.5) 
for i=1:19
    set(c(i),'FaceColor',  [146 208 80]/255)
end   
set(c(18),'FaceColor',  [255 192 0]/255)
set(gca,'XTick',(1:1:19),'Fontsize',fontsize);%设置要显示坐标刻度
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('CPU\_stress');

 
% 
% set(gca,'YLim',[0  .5]);%X轴的数据显示范围
% set(gca,'YTick',[0:0.05: .5]);%设置要显示坐标刻度
% set(gca , 'XTick', [1: 1: 11] , 'Fontsize' ,10)
% set(gca,'xticklabels',{'EMU-llc','EMU-dram','EMU-stress','EMU-lstm','CPU-llc','CPU-dram','CPU-stress','CPU-lstm','memBw-llc','memBw-dram','memBw-lstm'});
 
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


