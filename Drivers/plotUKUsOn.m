function plotUKUsOn

'отрисовка метода УКУ сетевого'

load data_num_coalic;

if num_coalic==2;
VyborTipJukus;

%load data_uku; plot(Data0.J(:,1),Data0.J(:,2),'c*'); hold on;
%load data_uku; plot(Data1.J(:,1),Data1.J(:,2),'c.'); hold on;
%load data_uku; plot(Data2.J(:,1),Data2.J(:,2),'co'); hold on;

end;

if num_coalic==3;
VyborTipJ3ukus;
    
%load data_uku_n; plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'c*'); hold on;
%load data_uku_n; plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'c.'); hold on;
%load data_uku_n; plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'co'); hold on;
%load data_uku_n; plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'c+'); hold on;


end;
