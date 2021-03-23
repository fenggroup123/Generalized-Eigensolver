clear all
sig=1e3;
num_eigs=1;
flag_weighted=0;
[Gx,Ax]=mtx2graph('CIFAR10/GfCIFARin0.mtx');
[Gy,Ay]=mtx2graph('CIFAR10/GfCIFAR0.mtx');
[dist0, DIST0]=RobustMetric(Gx,Gy)  ;
%figure;plot([dist0, DIST0],'r-o');
% hold on

[Gx,Ax]=mtx2graph('CIFAR10/GfCIFARin025.mtx');
[Gy,Ay]=mtx2graph('CIFAR10/GfCIFAR025.mtx');
[dist025, DIST025]=RobustMetric(Gx,Gy)  ;
%plot([dist025, DIST025],'b-*');

[Gx,Ax]=mtx2graph('CIFAR10/GfCIFARin05.mtx');
[Gy,Ay]=mtx2graph('CIFAR10/GfCIFAR05.mtx');
[dist05, DIST05]=RobustMetric(Gx,Gy)  ;
%plot([dist05, DIST05],'g->');

[Gx,Ax]=mtx2graph('CIFAR10/GfCIFARin1.mtx');
[Gy,Ay]=mtx2graph('CIFAR10/GfCIFAR1.mtx');
[dist1, DIST1]=RobustMetric(Gx,Gy)  ;
% plot([dist1, DIST1],'k-<');
% legend({'\epsilon=0','\epsilon=0.25','\epsilon=0.5','\epsilon=1.0'},'Location','southeast','Fontsize',18)
% legend({'\epsilon=0','\epsilon=0.5','\epsilon=1.0'},'Location','southeast','Fontsize',18)
%savefig('robustness.fig');
