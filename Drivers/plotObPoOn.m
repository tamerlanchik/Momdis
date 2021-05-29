function plotObPoOn

'отрисовка области показателей'

load data_num_coalic;

if num_coalic==2;
% 2 коалиции
load data_field;
plot(DataM.J(:,:,1),DataM.J(:,:,2),'b.'); hold on;
end;

if num_coalic==3;
% 3 коалиции
load data_field;
plot3(DataM.J(:,:,1,1),DataM.J(:,:,1,2),DataM.J(:,:,1,3),'b.'); hold on;
%plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'b.'); hold on;
end;
