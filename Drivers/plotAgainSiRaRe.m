function plotAgainSiRaRe(n)

load data_num_coalic;

if num_coalic==2;
    
load data_nash_a;

if n==1; plot(Data0.J(:,1),Data0.J(:,2),'y*'); hold on; end;
if n==2; plot(Data1.J(:,1),Data1.J(:,2),'y.'); hold on; end;
if n==3; plot(Data2.J(:,1),Data2.J(:,2),'yo'); hold on; end;

end;

if num_coalic==3;

load data_nash_a;
if n==1; plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'y*'); hold on; end;
if n==2; plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'y.'); hold on; end;
if n==3; plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'yo'); hold on; end;
if n==4; plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'y+'); hold on; end;

end;