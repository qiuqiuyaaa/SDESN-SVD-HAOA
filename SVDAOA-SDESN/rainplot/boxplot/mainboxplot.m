    close all
    clear 
    clc

% rng(1);  % For reproducibility
x1 = normrnd(0.15287,0.01E-07,100,1);
x2 = normrnd(0.10807,0.81E-05,100,1);
x3 = normrnd(0.1862,2.33E-06,100,1);
x4 = normrnd(0.12096,3.08E-07,100,1);
x5 = normrnd(0.38376,0.95E-06,100,1);
x6 = normrnd(0.09052,2.2E-08,100,1);

figure
boxplot([x1,x2,x3,x4,x5,x6],'Symbol','o','OutlierSize',3)


 % 坐标区域属性设置
ax=gca;hold on;
ax.LineWidth=1.1;
ax.FontSize=14;
% ax.FontName='SimHei';
ax.XTickLabelRotation=0;
ax.XTickLabel={'DRPedESN','DHESN','PRESN','EESN','ESN','SDESN'};
ax.YLabel.String='log(value)';
ax.Title.String=('Boxplot');
ax.Title.FontSize=14;
% 写入excel
% wexcel(Y,Function_name);

% 修改线条粗细
lineObj=findobj(gca,'Type','Line');
for i=1:length(lineObj)
    lineObj(i).LineWidth=1.5;
    lineObj(i).MarkerFaceColor=[1,1,1].*.3;
    lineObj(i).MarkerEdgeColor=[1,1,1].*.3;
end

