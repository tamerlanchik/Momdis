function plotWepliOn

'отрисовка метода Шепли'


load data_num_coalic;

if num_coalic==2;
load data_shepli;
plot(Data0.J(1),Data0.J(2),'k*'); hold on;
end;

if num_coalic==3;
load data_shepli;
plot3(Data0.J(1),Data0.J(2),Data0.J(3),'k*'); hold on;
end;
