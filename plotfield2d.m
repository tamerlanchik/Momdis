function plotfield2d(i);
load('data_getparopt2d.mat');
load('data_qmm.mat');
load('data_x0.mat');
Qtemp=Data0.Q;
Qnew=[];
Jnew=[];
for j=1:100
    Qtemp(i)=q_min(i)+q_max(i)*j/100;
    Xtemp=mat_int(Qtemp, 0);
    Jtemp=mat_fun(Xtemp, Qtemp,0);
    Qnew=[Qnew; Qtemp];
    Jnew=[Jnew; Jtemp];
end;
figure;
plotyy(Qnew(:, i), Jnew(:, 1), Qnew(:, i), Jnew(:, 2));
grid on;
hold off;
legend('J(1)', 'J(2)');
