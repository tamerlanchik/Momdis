function plotSlRaReOn

'отрисовка метода слабых равновесных решений'

load data_num_coalic;

if num_coalic==2;
VyborTipJslrare;

%load data_uku_A; plot(Data0.J(:,1),Data0.J(:,2),'c*'); hold on;
%load data_uku_A; plot(Data1.J(:,1),Data1.J(:,2),'c.'); hold on;
%load data_uku_A; plot(Data2.J(:,1),Data2.J(:,2),'co'); hold on;


end;

if num_coalic==3;
VyborTip3Jslrare;

    
%load data_uku_A; plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'c*'); hold on;
%load data_uku_A; plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'c.'); hold on;
%load data_uku_A; plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'co'); hold on;
%load data_uku_A; plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'c+'); hold on;


end;
