function plotSTEK5On

'отрисовка метода СТЭК-5'


load data_num_coalic;

if num_coalic==2;
load data_stek5;
plot(Data0.J(:,1),Data0.J(:,2),'c.'); hold on;
end;

if num_coalic==3;
load data_stek5;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'c.'); hold on;
end;
