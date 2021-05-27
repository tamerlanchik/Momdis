function plotSTEK7On

'отрисовка метода СТЭК-7'

load data_num_coalic;

if num_coalic==2;
load data_stek7;
plot(Data0.J(:,1),Data0.J(:,2),'k.'); hold on;
plot(Data0.J(:,1),Data0.J(:,2),'ko'); hold on;
end;

if num_coalic==3;
load data_stek7;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'k.'); hold on;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'ko'); hold on;
end;
