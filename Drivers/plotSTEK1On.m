function plotSTEK1On

'отрисовка метода СТЭК-1'

load data_num_coalic;

if num_coalic==2;
load data_stek1;
plot(Data0.J(:,1),Data0.J(:,2),'g*'); hold on;
plot(Data0.J(:,1),Data0.J(:,2),'go'); hold on;

end;

if num_coalic==3;
load data_stek1;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'g*'); hold on;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'go'); hold on;
end;
