clc
clear
a = [0.291402715, 0.257530759 , 0.098995696 , 0.080645161 ,  0.252179899 ,0.234161491 , 0.11235775 ,0.113578138  , 0.280316344 ,0.384916748 , 0.180722892
]
b=diag(a);
axes1 = axes('YGrid','on')
hold(axes1, 'on')
c = bar(b  , 'stack' ,'BarWidth',0.5)
set(c(1),'FaceColor',  [215 120 120]/255)
set(c(2),'FaceColor', [215 120 120]/255)
set(c(3),'FaceColor',  [215 120 120]/255)
set(c(4),'FaceColor',  [215 120 120]/255)
set(c(5),'FaceColor',[107 162 243]/255)
set(c(6),'FaceColor',[107 162 243]/255)
set(c(7),'FaceColor',[107 162 243]/255)
set(c(8),'FaceColor',[107 162 243]/255)
set(c(9),'FaceColor',[205 205 205]/255)
set(c(10),'FaceColor',[205 205 205]/255)
set(c(11),'FaceColor',[205 205 205]/255)

set(gca,'YLim',[0  .4]);%X轴的数据显示范围

set(gca,'XLim',[0.5  11.5]);%X轴的数据显示范围
set(gca,'YTick',[0:0.1: .4]);%设置要显示坐标刻度
set(gca , 'XTick', [1: 1: 11] , 'Fontsize' ,22)
set(gca,'xticklabels',{'EMU-llc','EMU-dram','EMU-stress','EMU-lstm','CPU-llc','CPU-dram','CPU-stress','CPU-lstm','memBw-llc','memBw-dram','memBw-lstm'});
 set(gca,'yticklabels',{0,10 ,20,30,40});

h = gca;

set(h ,'XTickLabelRotation', 45	)
% th=rotateticklabel(h, 45);%调用下面的函数，坐标倾斜45度
% title('result in redis-cluster with realLoad', 'FontSize',13)
% xlabel('metrics' , 'Fontsize' ,22)
ylabel('Improvement (%)' , 'Fontsize' ,22)
set(gcf,'position',[200 200 500 370])
 set(gca,'units','normalized','position',[0.18 0.43 0.75 0.53],'box','off')
  set(gca,'xcolor',[0 0 0]);
 set(gca,'ycolor',[0 0 0]);