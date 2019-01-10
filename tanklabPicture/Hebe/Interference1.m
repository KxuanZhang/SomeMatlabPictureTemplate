clc
clear
 load interfence1 ;
 load interfenceData1;  
 func1;
 fontsize=8;
 ytick=[0 100 200 300 400];
  ytick1=[0 100 200 300 800];
  ylim1=[0 800];
 ylim=[0 400];
 %%
 set(gcf,'position',[200 200 700 550]) 
  
subplot(7,1,1)
c = bar(diag(interfence1(1,:))  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [255 192 0]/255)
set(c(2),'FaceColor', [146 208 80]/255)
for i=3:19
set(c(i),'FaceColor',  [255 0 0]/255)
end
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
legend('200%~300%');
 title('Stream\_dram(big)');
 hold on;
 yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(1,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
legend('200%~300%');
hold on;
 plot((1:1:19),interfenceData1(2,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
 
%
subplot(7,1,2)
c = bar(diag(interfence1(2,:))  , 'stack' ,'BarWidth',0.5)
for i=1:8
set(c(i),'FaceColor',  [146 208 80]/255)
end
for i=9:13
set(c(i),'FaceColor',  [255 192 0]/255)
end
set(c(14),'FaceColor',  [146 208 80]/255)
set(c(15),'FaceColor', [255 192 0]/255)
set(c(16),'FaceColor',  [255 0 0]/255)
for i=17:19
set(c(i),'FaceColor',  [255 192 0]/255)
end 
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
legend('<100%');
 title('Stream\_dram(small)');
  hold on;
   yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(3,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
 plot((1:1:19),interfenceData1(4,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
%%
subplot(7,1,3)
c = bar(diag(interfence1(3,:))  , 'stack' ,'BarWidth',0.5)
for i=1:19
set(c(i),'FaceColor',  [255 0 0]/255)
end 
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
legend('>300%');
 title('Stream\_llc(big)');
  hold on;
   yyaxis right ;set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(5,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
 plot((1:1:19),interfenceData1(6,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
%%
subplot(7,1,4)
c = bar(diag(interfence1(4,:))  , 'stack' ,'BarWidth',0.5)
for i=1:2
set(c(i),'FaceColor',  [255 255 0]/255)
end 
set(c(3),'FaceColor',  [146 208 80]/255)
set(c(4),'FaceColor',  [255 255 0]/255)
set(c(5),'FaceColor',  [146 208 80]/255)
set(c(6),'FaceColor',  [255 255 0]/255)
set(c(7),'FaceColor',  [255 255 0]/255)
set(c(8),'FaceColor',  [255 192 0]/255)
set(c(9),'FaceColor',  [146 208 80]/255)
set(c(10),'FaceColor',  [255 255 0]/255)
set(c(11),'FaceColor',  [146 208 80]/255)
set(c(12),'FaceColor',  [146 208 80]/255)
set(c(13),'FaceColor',  [255 0 0]/255)
set(c(14),'FaceColor',  [255 255 0]/255)
set(c(16),'FaceColor',  [255 255 0]/255)
set(c(15),'FaceColor',  [255 192 0]/255)
for i=17:19
set(c(i),'FaceColor',  [255 0 0]/255)
end  
set(c(7),'FaceColor',  [255 0 0]/255)
set(c(6),'FaceColor',  [255 0 0]/255)
set(c(17),'FaceColor',  [255 255 0]/255)
set(c(18),'FaceColor',  [255 255 0]/255)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
legend('100%~200%');
 title('Stream\_llc(small)');
  hold on;
   yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(7,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
 plot((1:1:19),interfenceData1(8,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
%%

subplot(7,1,5)
c = bar(diag(interfence1(5,:))  , 'stack' ,'BarWidth',0.5)
set(c(16),'FaceColor',  [146 208 80]/255)
set(c(2),'FaceColor',  [146 208 80]/255)
set(c(5),'FaceColor',  [146 208 80]/255)
set(c(6),'FaceColor',  [146 208 80]/255)
set(c(8),'FaceColor',  [146 208 80]/255)
set(c(9),'FaceColor',  [146 208 80]/255)
set(c(11),'FaceColor',  [146 208 80]/255)
set(c(3),'FaceColor',  [255 192 0]/255)
set(c(4),'FaceColor',  [255 192 0]/255)
set(c(13),'FaceColor',  [255 192 0]/255)
set(c(17),'FaceColor',  [255 192 0]/255)
set(c(7),'FaceColor',  [255 255 0]/255)
set(c(10),'FaceColor',  [255 255 0]/255)
set(c(12),'FaceColor',  [255 255 0]/255)
set(c(14),'FaceColor',  [255 255 0]/255)
set(c(15),'FaceColor',  [255 255 0]/255)
set(c(18),'FaceColor',  [255 255 0]/255)
set(c(19),'FaceColor',  [255 255 0]/255)
set(c(1),'FaceColor',  [255 0 0]/255)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('DVFS');
  hold on;
   yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(9,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
 plot((1:1:19),interfenceData1(10,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
%%
subplot(7,1,6)
 hold on;
 plot((1:1:19),interfenceData1(11,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
   yyaxis right ;set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(12,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
legend('Master','Slave')
hold on
c = bar(diag(interfence1(6,:))  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [255 255 0]/255)
set(c(12),'FaceColor',  [255 255 0]/255)
for i=2:11
    set(c(i),'FaceColor',  [146 208 80]/255)
end
for i=15:19
    set(c(i),'FaceColor',  [146 208 80]/255)
end 
set(c(14),'FaceColor',  [255 192 0]/255)
set(gca,'xtick',[],'xticklabel',[])
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('Iperf');
 
%%
subplot(7,1,7)
c = bar(diag(interfence1(7,:))  , 'stack' ,'BarWidth',0.5) 
for i=1:6
    set(c(i),'FaceColor',  [146 208 80]/255)
end
for i=7:19
    set(c(i),'FaceColor',  [255 255 0]/255)
end  
 hold on;
  yyaxis right; set(gca,'YLim',ylim);set(gca,'YTick',ytick,'Fontsize',fontsize);
   set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);
 plot((1:1:19),interfenceData1(13,:),'-*b','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','b',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','b',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10););
  hold on;
 plot((1:1:19),interfenceData1(14,:),'-*k','LineWidth',1,... %设置线的宽度为2
'MarkerEdgeColor','w',... %设置标记点边缘颜色为黑色
'MarkerFaceColor','w',... %设置标记点填充颜色为黄色
'MarkerSize',2) %设置标记点的尺寸为10);
set(gca,'XTick',(1:1:19),'Fontsize',fontsize);%设置要显示坐标刻度
set(gca,'YLim',ylim);%X轴的数据显示范围
set(gca,'YTick',ytick,'Fontsize',fontsize);%设置要显示坐标刻度
 title('CPU\_stress');

