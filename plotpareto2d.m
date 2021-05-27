function plotpareto2d(i);
load('data_par_s.mat');
[Qnew, Ind]=sort(Data0.Q(:,i));
plotyy(Qnew, Data0.J(Ind,1), Qnew, Data0.J(Ind,2));
%plot(Qnew, Data0.J(Ind, 1)/5+Data0.J(Ind, 2)/120);
grid on;
hold off;
legend('J(1)', 'J(2)');