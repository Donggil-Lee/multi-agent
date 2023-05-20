clear all
clc

load('Nestimation_Proposed_data.mat')
figure(4)
hold on
grid on
plot(Z(1,:),'-','color',[255 0 0]/255, 'linewidth',2)

load('PageRank_Ishii_data.mat')
plot(Z(1,:),'-','color',[224, 64, 251]/255,'linewidth',2)

load('PageRank_IshiiLater_data.mat')
plot(X(1,:),'-','color',[100, 255, 218]/255,'linewidth',2)


plot(1:500,p1(1)*ones(1,500),'--','color',[0.6 0.6 0.6])
plot(501:1000,p2(1)*ones(1,500),'--','color',[0.6 0.6 0.6])
plot(1001:1500,p3(1)*ones(1,500),'--','color',[0.6 0.6 0.6])
xlabel('time step','interpreter','latex')
legend('Proposed','RA','SANI','interpreter','latex')
set(gca,'FontSize', 13);
