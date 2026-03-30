
%% LOAD %%

clear;close;clc

load F5DataSet

%%
CMP1 = parula(12);

% PLOT
fq  = 'SeaSwell';
YA = 0; YB = 2.5; rs = 0.5;
YLABEL = 'H_s^{MOD} (m)'; XLABEL = 'H_s^{OBS} (m)';
TICKS = [0 1.25 2.5];
%fig = figure('Renderer', 'painters','units','centimeters', 'Position',[1 1 8 23]  ,'color','w');
%fig = figure('Renderer', 'painters','units','centimeters', 'Position',[1 1 10 20]  ,'color','w');
fig = figure('Renderer', 'painters','units','centimeters', 'Position',[1.0000 2.8575 22.4597 15.9456] ,'color','w');

%tiledlayout(3,1,"TileSpacing","tight")
%tiledlayout(1,2,"TileSpacing","compact")

subplot(121); hold on
    %eval(sprintf('scatter(Inst.%s.Hs(:),SWAN.RnB_05.%s.Hs(:),30,Inst.h(:))',fq,fq))%,''filled''
    eval(sprintf('scatter(Inst.%s.Hs(:),SWAN.O05v3.%s.Hs(:),30,Inst.h(:),''filled'')',fq,fq))
    plot(YA:rs:YB,YA:rs:YB,'--k')
    axis([YA YB YA YB]); yticks(TICKS); xticks(TICKS) ; grid minor
    ylabel(YLABEL)
    caxis([5 35]);
    text(YB - 0.975*diff([YA YB]),YB -0.08*diff([YA YB]),'A. Rx22','FontSize',14,'Color','r','BackgroundColor','w','EdgeColor','k') 
    text(YB - 0.41*diff([YA YB]),YB -0.75*diff([YA YB]),'MB =  -0.05','FontSize',12,'Color','k')  
    text(YB - 0.43*diff([YA YB]),YB -0.85*diff([YA YB]),'WSS = 0.95','FontSize',12,'Color','k')  
    text(YB - 0.45*diff([YA YB]),YB -0.95*diff([YA YB]),'RMSE= 0.17','FontSize',12,'Color','k')  
    %set(gca,'Xticklabel',[]) %to just get rid of the numbers but leave the ticks.
    daspect([1 1 1])
    xlabel(XLABEL)
    set(gca,'color',[.9 .9 .9])
    niceplot_nobold_nomintick(18);

subplot(122); hold on
    eval(sprintf('scatter(Inst.%s.Hs(:),SWAN.OnB_05b.%s.Hs(:),30,Inst.h(:),''filled'')',fq,fq))
    plot(YA:rs:YB,YA:rs:YB,'--k')
    axis([YA YB YA YB]); yticks(TICKS); xticks(TICKS) ; grid minor
    xlabel(XLABEL); %ylabel(YLABEL)
    caxis([5 35]);
    set(gca,'Yticklabel',[]) %to just get rid of the numbers but leave the ticks.
    text(YB - 0.975*diff([YA YB]),YB -0.08*diff([YA YB]),'B. Ma88','FontSize',14,'Color','r','BackgroundColor','w','EdgeColor','k')   
    text(YB - 0.41*diff([YA YB]),YB -0.75*diff([YA YB]),'MB =  -0.16','FontSize',12,'Color','k')  
    text(YB - 0.43*diff([YA YB]),YB -0.85*diff([YA YB]),'WSS = 0.91','FontSize',12,'Color','k')  
    text(YB - 0.46*diff([YA YB]),YB -0.95*diff([YA YB]),'RMSE= 0.23','FontSize',12,'Color','k')  
    daspect([1 1 1])
    set(gca,'color',[.9 .9 .9])
    niceplot_nobold_nomintick(18);

colormap((parula(12)))
%colormap(gray(1))
%colormap(cmocean('thermal',12))
% % Final format
cb = colorbar('location','south','position',[0.1300 0.1175 0.7750 0.0265]);
cb.Label.String = "h (m)";
cb.Label.VerticalAlignment = "top";
set(findobj(fig,'Type','line'),'LineWidth',1.5)
set(findall(fig,'-property','FontSize'),'FontSize',18)