function plotUKUksOff

'выкл метода УКУ сетевого'

load data_num_coalic;

if num_coalic==2;

load data_uku Data0 Data1 Data2;
plot(Data0.J(:,1),Data0.J(:,2),'w*');
plot(Data1.J(:,1),Data1.J(:,2),'w.');
plot(Data2.J(:,1),Data2.J(:,2),'wo');

end;

if num_coalic==3;
load data_uku_n;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'w*');
plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'w.');
plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'wo');
plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'w+');

end;
