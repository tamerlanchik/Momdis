function plotAgainUKUs(n)
%перерисовка УКУ сетевого
load data_num_coalic;

if num_coalic==2;
    
load data_uku;

if n==1; plot(Data0.J(:,1),Data0.J(:,2),'c*'); hold on; end;
if n==2; plot(Data1.J(:,1),Data1.J(:,2),'c.'); hold on; end;
if n==3; plot(Data2.J(:,1),Data2.J(:,2),'co'); hold on; end;

end;

if num_coalic==3;

load data_uku_n;
if n==1; plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'c*'); hold on; end;
if n==2; plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'c.'); hold on; end;
if n==3; plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'co'); hold on; end;
if n==4; plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'c+'); hold on; end;

end;