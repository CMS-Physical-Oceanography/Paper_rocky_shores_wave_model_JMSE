%% Need to change all the colors on this
set(0, 'DefaultAxesFontName', 'Times');
clear;close;clc

load F6_DataSet_v7

load ASfavecolors.mat
%%
h = Inst.h(1,:);
[ho,hI] = sort(h);
MSIZE = 15;
LW    = 1.5;
aB    = [1:8 20];
aX    = 9:13;
aE    = 14:19;
fac2  = 0.75;

% OPTION A WSS MOD/OBS:
fig = figure('Renderer', 'painters','units','centimeters', 'Position',[2.5400 2.8928 18.1328 23.6008] ,'color','w');

tiledlayout(3,1,"TileSpacing","compact")

nexttile; hold on
    YLAB = 'MB (m)'; YAX  = [-.3 .45]; YTICKS = [-.25 0 .25 .5];
    XLAB = '';   XAX  = [3 37]; XTICKS = 0:5:35;
    % Array B 
    plot([XAX(1) XAX(2)], [0 0],'--k')
    plot(h(aB),R.OnB_05b.SeaSwell.byh.MB(aB),"ok",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aB),R.Oa40.SeaSwell.byh.MB(aB),"ok",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
    plot(h(aX),R.OnB_05b.SeaSwell.byh.MB(aX),"^k",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aX),R.Oa40.SeaSwell.byh.MB(aX),"^k",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
    plot(h(aE),R.OnB_05b.SeaSwell.byh.MB(aE),"sk",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aE),R.Oa40.SeaSwell.byh.MB(aE),"sk",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
  
    plot(h(aB),R.O05v3.SeaSwell.byh.MB(aB),"ok",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aB),R.RnB_05.SeaSwell.byh.MB(aB),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aB),R.RnB.SeaSwell.byh.MB(aB),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    plot(h(aX),R.O05v3.SeaSwell.byh.MB(aX),"^k",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aX),R.RnB_05.SeaSwell.byh.MB(aX),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aX),R.RnB.SeaSwell.byh.MB(aX),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    plot(h(aE),R.O05v3.SeaSwell.byh.MB(aE),"sk",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aE),R.RnB_05.SeaSwell.byh.MSE(aE),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aE),R.RnB.SeaSwell.byh.MSE(aE),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    ylabel(YLAB); ylim(YAX); yticks(YTICKS);
    xlabel(XLAB); xlim(XAX); xticks(XTICKS);
    grid on; box on
    text(XAX(1)+ 0.01*diff(XAX),YAX(2)-0.1*diff([YAX(1) YAX(2)]),'A.','FontSize',14,'fontname','Times')    
    set(gca,'Xticklabel',[])

    nexttile; hold on
    YLAB = 'RMSE (m)'; YAX  = [0.1 0.425]; YTICKS = [0 0.1 0.2 0.3 0.4 .5];
    XLAB = '';   XAX  = [3 37]; XTICKS = 0:5:35;
    % Array B 
    plot(h(aB),sqrt(R.OnB_05b.SeaSwell.byh.MSE(aB)),"ok",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aB),sqrt(R.Oa40.SeaSwell.byh.MSE(aB)),"ok",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
            plot(h(aB),sqrt(R.O05v3.SeaSwell.byh.MSE(aB)),"ok",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aB),sqrt(R.RnB_05.SeaSwell.byh.MSE(aB)),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aB),sqrt(R.RnB.SeaSwell.byh.MSE(aB)),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    % Array X (asilomar)
    plot(h(aX),sqrt(R.OnB_05b.SeaSwell.byh.MSE(aX)),"^k",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aX),sqrt(R.Oa40.SeaSwell.byh.MSE(aX)),"^k",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
        plot(h(aX),sqrt(R.O05v3.SeaSwell.byh.MSE(aX)),"^k",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aX),sqrt(R.RnB_05.SeaSwell.byh.MSE(aX)),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aX),sqrt(R.RnB.SeaSwell.byh.MSE(aX)),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    % Array E (Alongshore)
    plot(h(aE),sqrt(R.OnB_05b.SeaSwell.byh.MSE(aE)),"sk",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aE),sqrt(R.Oa40.SeaSwell.byh.MSE(aE)),"sk",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
        plot(h(aE),sqrt(R.O05v3.SeaSwell.byh.MSE(aE)),"sk",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aE),sqrt(R.RnB_05.SeaSwell.byh.MSE(aE)),"sk","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aE),sqrt(R.RnB_05.SeaSwell.byh.MSE(aE)),"sk","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    ylabel(YLAB); ylim(YAX); yticks(YTICKS);
    xlabel(XLAB); xlim(XAX); xticks(XTICKS);
    grid on; box on
    text(XAX(1)+ 0.01*diff(XAX),YAX(2)-0.1*diff([YAX(1) YAX(2)]),'B.','FontSize',14,'fontname','Times')    
    %legend('[Ma88]','[Ro16]','[Go20]','','','','','','','Orientation','horizontal','location','southeast','box','off')
    % set(gca,'Xticklabel',[]) %to just get rid of the numbers but leave the ticks.
    set(gca,'Xticklabel',[])

nexttile; hold on
    YLAB = 'WSS'; YAX  = [0.6 1.05]; YTICKS = [0.7 0.8 .9 1];
    XLAB = '';   XAX  = [3 37]; XTICKS = 0:5:35;
    % Array B 
    plot(h(aB),R.OnB_05b.SeaSwell.byh.WSS(aB),"ok",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aB),R.Oa40.SeaSwell.byh.WSS(aB),"ok",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
        plot(h(aB),R.O05v3.SeaSwell.byh.WSS(aB),"ok",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aB),R.RnB_05.SeaSwell.byh.WSS(aB),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aB),R.RnB.SeaSwell.byh.WSS(aB),"ok","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    % Array X (asilomar)
    plot(h(aX),R.OnB_05b.SeaSwell.byh.WSS(aX),"^k",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aX),R.Oa40.SeaSwell.byh.WSS(aX),"^k",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
        plot(h(aX),R.O05v3.SeaSwell.byh.WSS(aX),"^k",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aX),R.RnB_05.SeaSwell.byh.WSS(aX),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aX),R.RnB_05.SeaSwell.byh.WSS(aX),"^k","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    % Array E (Alongshore)
    plot(h(aE),R.OnB_05b.SeaSwell.byh.WSS(aE),"sk",'MarkerFaceColor',AS.o,"MarkerSize",MSIZE)
    plot(h(aE),R.Oa40.SeaSwell.byh.WSS(aE),"sk",'MarkerFaceColor',AS.b,"MarkerSize",MSIZE)
    plot(h(aE),R.O05v3.SeaSwell.byh.WSS(aE),"sk",'MarkerFaceColor','w',"MarkerSize",MSIZE)
    plot(h(aE),R.RnB_05.SeaSwell.byh.WSS(aE),"sk","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.r)
    plot(h(aE),R.RnB_05.SeaSwell.byh.WSS(aE),"sk","MarkerSize",MSIZE.*fac2,"MarkerFaceColor",AS.g)
    ylabel(YLAB); ylim(YAX); yticks(YTICKS);
    xlabel(XLAB); xlim(XAX); xticks(XTICKS);
    grid on; box on
    text(XAX(1)+ 0.01*diff(XAX),YAX(2)-0.1*diff([YAX(1) YAX(2)]),'C.','FontSize',14,'fontname','Times')    
    %legend('[Ma88]','[Rx22]','','','','','Orientation','horizontal','location','southeast','box','off')
    legend('Ma88','Rx22','Rx22^{var}','Ro16','Ro16^{k_{N}=1}','location','southeast','box','on')

    set(findobj(fig,'Type','line'),'LineWidth',1.5)
    set(findall(gcf,'-property','FontSize'),'FontSize',18)  
%    set(gca,'Xticklabel',[]) %to just get rid of the numbers but leave the ticks.
    xlabel('Depth (m)')

%export_fig 'F6_h_dependency_v9.png'  -r300