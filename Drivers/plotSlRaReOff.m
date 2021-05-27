function plotSlRaReOff

'���� ������ ������ ����������� �������'

load data_num_coalic;

if num_coalic==2;
load data_uku_A;
plot(Data0.J(:,1),Data0.J(:,2),'w*'); hold on;
plot(Data1.J(:,1),Data1.J(:,2),'w.'); hold on;
plot(Data2.J(:,1),Data2.J(:,2),'wo'); hold on;

%����������� ������� �����������
ObPok=findobj(graphics, 'Tag', 'GrObPokOn');
if get(ObPok,'Value')
    plotObPoOn;
end;

%����������� ������� ����������� �������
SiRaRe=findobj(graphics, 'Tag', 'GrSiRaReOn');
if get(SiRaRe,'Value')
    load data_GrSiRaRe;
    plotAgainSiRaRe(numGrSiRaRe);
end;

%����������� ��� ��������
UKUs=findobj(graphics, 'Tag', 'GrUKUsOn');
if get(UKUs,'Value')
    load data_GrUKUs;
    plotAgainUKUs(numGrUKUs);
end;

%����������� ��� ��������
NEWs=findobj(graphics, 'Tag', 'GrNEWsOn');
if get(NEWs,'Value')
    load data_GrNEWs;
    plotAgainNEWs(numGrNEWs);
end;

%����������� ������ ��������
ParS=findobj(graphics, 'Tag', 'GrParetsOn');
if get(ParS,'Value')
    plotPeretsOn;
end;

%����������� ��� �������
NEWt=findobj(graphics, 'Tag', 'GrNEWtOn');
if get(NEWt,'Value')
    plotNEWtOn;
end;

%����������� �.�����
Wepli=findobj(graphics, 'Tag', 'GrWepliOn');
if get(Wepli,'Value')
    plotWepliOn;
end;

%����������� ����-1
St1=findobj(graphics, 'Tag', 'GrSTEK1On');
if get(St1,'Value')
    plotSTEK1On;
end;

%����������� ����-5
St5=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St5,'Value')
    plotSTEK5On;
end;

%����������� ����-7
St7=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St7,'Value')
    plotSTEK7On;
end;

end;

if num_coalic==3;
load data_uku_A;

plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'w*'); hold on;
plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'w.'); hold on;
plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'wo'); hold on;
plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'w+'); hold on;

%����������� ������� �����������
ObPok=findobj(graphics, 'Tag', 'GrObPokOn');
if get(ObPok,'Value')
    plotObPoOn;
end;

%����������� ������� ����������� �������
SiRaRe=findobj(graphics, 'Tag', 'GrSiRaReOn');
if get(SiRaRe,'Value')
    load data_GrSiRaRe;
    plotAgainSiRaRe(numGrSiRaRe);
end;

%����������� ��� ��������
UKUs=findobj(graphics, 'Tag', 'GrUKUsOn');
if get(UKUs,'Value')
    load data_GrUKUs;
    plotAgainUKUs(numGrUKUs);
end;

%����������� ��� ��������
NEWs=findobj(graphics, 'Tag', 'GrNEWsOn');
if get(NEWs,'Value')
    load data_GrNEWs;
    plotAgainNEWs(numGrNEWs);
end;

%����������� ������ ��������
ParS=findobj(graphics, 'Tag', 'GrParetsOn');
if get(ParS,'Value')
    plotPeretsOn;
end;

%����������� ��� �������
NEWt=findobj(graphics, 'Tag', 'GrNEWtOn');
if get(NEWt,'Value')
    plotNEWtOn;
end;

%����������� �.�����
Wepli=findobj(graphics, 'Tag', 'GrWepliOn');
if get(Wepli,'Value')
    plotWepliOn;
end;

%����������� ����-1
St1=findobj(graphics, 'Tag', 'GrSTEK1On');
if get(St1,'Value')
    plotSTEK1On;
end;

%����������� ����-5
St5=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St5,'Value')
    plotSTEK5On;
end;

%����������� ����-7
St7=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St7,'Value')
    plotSTEK7On;
end;

end;
