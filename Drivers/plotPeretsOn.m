function plotPeretsOn

'отрисовка метода Парето сетевого'


load data_num_coalic;

if num_coalic==2;
load data_par_s;
plot(Data0.J(:,1),Data0.J(:,2),'r*'); hold on;

end;

if num_coalic==3;
load data_par_s;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'r*'); hold on;
end;

