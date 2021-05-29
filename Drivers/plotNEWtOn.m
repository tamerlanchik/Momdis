function plotNEWtOn

'отрисовка метода Нэш точного'

load data_num_coalic;

if num_coalic==2;
load data_nash_t;
plot(Data0.J(:,1),Data0.J(:,2),'k*'); hold on;
end;

if num_coalic==3;
load data_nash_t;
plot(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'k*'); hold on;
end;
