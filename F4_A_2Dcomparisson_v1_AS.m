%% Figure 3 Article Roughness %%
% Spectral comparisson %

%% LOAD %%
clear;close;clc
load F3_DataSet_v3
%% Plot 
set(0, 'DefaultAxesFontName', 'Times');

 XTICKS = linspace(ceil(XLIM(1)+2),XLIM(2),6);
dateFormat = '';
YA = 0.05; YB = 0.3; YTICKS = [0.1 0.2 0.3]; YLABEL = 'f (Hz)';
fig = figure('Renderer', 'painters','units','centimeters',  'Position',[4.0217 3.8453 24.3769 25.8939] ,'color','w');

subplot(4,1,1)
hold on
    PC = pcolor(t,f1,OBS); 
    PC.FaceColor = 'flat'; PC.EdgeColor = 'none';
    [C,H] = contour(t,f1,OBS,RANGE,'-.k','color','r','linewidth',2);
    xlim(XLIM); xticks (XTICKS); datetick('x',dateFormat,'keeplimits','keepticks');
    grid on; ax = gca; ax.GridColor = Fo.C6 ;ax.GridAlpha = 0.5; set(gca,'layer','top')
    ylim([YA YB]); yticks(YTICKS); ylabel(YLABEL);
    caxis([0 1]);
    niceplot_nobold_nomintick(16);
    text(XLIM(2)- 0.99*diff(XLIM),YB-0.1*diff([YA YB]),'A. OBS','FontSize',16,'Color','w','fontname','times') 

subplot(4,1,2)
 hold on
    PC = pcolor(t,f2,MOD); 
    PC.FaceColor = 'flat'; PC.EdgeColor = 'none';
    [C,H] = contour(t,f1,MOD,RANGE,'-.k','color','r','linewidth',2);
    caxis([0 1]);
    xlim(XLIM); xticks (XTICKS); datetick('x',dateFormat,'keeplimits','keepticks');
    grid on; ax = gca; ax.GridColor = Fo.C6 ;ax.GridAlpha = 0.5; set(gca,'layer','top')
    ylim([YA YB]); yticks(YTICKS); ylabel(YLABEL);
    niceplot_nobold_nomintick(16);
    text(XLIM(2)- 0.99*diff(XLIM),YB-0.1*diff([YA YB]),'B. MOD','FontSize',16,'Color','w','fontname','times') 

cb1 = colorbar('position',[0.9074 0.5224 0.015 0.4013]);
cb1.Label.String = 'S_{\eta} / (S_{\eta})_{Tp}';
cb1.Label.Interpreter = 'tex';
colormap(parula(10));
cb1.Label.VerticalAlignment = "top";
cb1.Label.FontSize = 16;

subplot(4,1,3)
hold on
    PC = pcolor(t,f1,OBST); 
    PC.FaceColor = 'flat'; PC.EdgeColor = 'none';
    caxis([200 360]);
    xlim(XLIM); xticks (XTICKS); datetick('x',dateFormat,'keeplimits','keepticks');
    [C,H] = contour(t,f1,OBS,RANGE,'-.k','color','r','linewidth',2);
    grid on; ax = gca; ax.GridColor = Fo.C6 ;ax.GridAlpha = 0.5; set(gca,'layer','top')
    ylim([YA YB]); yticks(YTICKS); ylabel(YLABEL);
    %text(XLIM(2)- 0.03*diff(XLIM),YB-0.1*diff([YA YB]),'[c]','FontSize',14,'Color','w') 
            niceplot_nobold_nomintick(16);
    text(XLIM(2)- 0.99*diff(XLIM),YB-0.1*diff([YA YB]),'C. OBS','FontSize',16,'Color','w','fontname','times') 

subplot(4,1,4); hold on
    dateFormat = 'mmm dd';
    PC = pcolor(t,f2,MODT); 
    PC.FaceColor = 'flat'; PC.EdgeColor = 'none';
    caxis([220 320]);
    dateFormat = 'mmm dd';
    xlim(XLIM); xticks (XTICKS); datetick('x',dateFormat,'keeplimits','keepticks');
    [C,H] = contour(t,f1,MOD,RANGE,'-.k','color','r','linewidth',2);
    grid on; ax = gca; ax.GridColor = Fo.C6 ;ax.GridAlpha = 0.5; set(gca,'layer','top')
    ylim([YA YB]); yticks(YTICKS); ylabel(YLABEL);
    %text(XLIM(2)- 0.03*diff(XLIM),YB-0.1*diff([YA YB]),'[d]','FontSize',14,'Color','w') 
        niceplot_nobold_nomintick(16);
    text(XLIM(2)- 0.99*diff(XLIM),YB-0.1*diff([YA YB]),'D. MOD','FontSize',16,'Color','w','fontname','times') 

cb2 = colorbar('position',[0.9074 0.11 0.015 0.39]);
%cb2.Layout.Tile = 'east';
cb2.Label.String = '$\theta (^o)$';
cb2.Label.Interpreter = 'latex';
colormap(parula(20));
cb2.Label.VerticalAlignment = "top";
cb2.Label.FontSize = 16;


%set(findobj(fig,'Type','line'),'LineWidth',2.5)
