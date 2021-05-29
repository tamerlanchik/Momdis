function plotUKUsOff

'выкл метода УКУ сетевого'

load data_num_coalic;

if num_coalic==2;

load data_uku;
plot(Data0.J(:,1),Data0.J(:,2),'w*');
plot(Data1.J(:,1),Data1.J(:,2),'w.');
plot(Data2.J(:,1),Data2.J(:,2),'wo');

%перерисовка области показателей
ObPok=findobj(graphics, 'Tag', 'GrObPokOn');
if get(ObPok,'Value')
    plotObPoOn;
end;

%перерисовка слабых равновесных решений
SlRaRe=findobj(graphics, 'Tag', 'GrSlRaReOn');
if get(SlRaRe,'Value')
    load data_GrSlRaRe;
    plotAgainSlRaRe(numGrSlRaRe);
end;

%перерисовка сильных равновесных решений
SiRaRe=findobj(graphics, 'Tag', 'GrSiRaReOn');
if get(SiRaRe,'Value')
    load data_GrSiRaRe;
    plotAgainSiRaRe(numGrSiRaRe);
end;

%перерисовка Нэш сетевого
NEWs=findobj(graphics, 'Tag', 'GrNEWsOn');
if get(NEWs,'Value')
    load data_GrNEWs;
    plotAgainNEWs(numGrNEWs);
end;

%перерисовка Парето сетевого
ParS=findobj(graphics, 'Tag', 'GrParetsOn');
if get(ParS,'Value')
    plotPeretsOn;
end;

%перерисовка Нэш точного
NEWt=findobj(graphics, 'Tag', 'GrNEWtOn');
if get(NEWt,'Value')
    plotNEWtOn;
end;

%перерисовка т.Шепли
Wepli=findobj(graphics, 'Tag', 'GrWepliOn');
if get(Wepli,'Value')
    plotWepliOn;
end;

%перерисовка СТЭК-1
St1=findobj(graphics, 'Tag', 'GrSTEK1On');
if get(St1,'Value')
    plotSTEK1On;
end;

%перерисовка СТЭК-5
St5=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St5,'Value')
    plotSTEK5On;
end;

%перерисовка СТЭК-7
St7=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St7,'Value')
    plotSTEK7On;
end;

end;

if num_coalic==3;
load data_uku_n;
plot3(Data0.J(:,1),Data0.J(:,2),Data0.J(:,3),'w*');
plot3(Data1.J(:,1),Data1.J(:,2),Data1.J(:,3),'w.');
plot3(Data2.J(:,1),Data2.J(:,2),Data2.J(:,3),'wo');
plot3(Data3.J(:,1),Data3.J(:,2),Data3.J(:,3),'w+');

%перерисовка области показателей
ObPok=findobj(graphics, 'Tag', 'GrObPokOn');
if get(ObPok,'Value')
    plotObPoOn;
end;

%перерисовка слабых равновесных решений
SlRaRe=findobj(graphics, 'Tag', 'GrSlRaReOn');
if get(SlRaRe,'Value')
    load data_GrSlRaRe;
    plotAgainSlRaRe(numGrSlRaRe);
end;

%перерисовка сильных равновесных решений
SiRaRe=findobj(graphics, 'Tag', 'GrSiRaReOn');
if get(SiRaRe,'Value')
    load data_GrSiRaRe;
    plotAgainSiRaRe(numGrSiRaRe);
end;

%перерисовка Нэш сетевого
NEWs=findobj(graphics, 'Tag', 'GrNEWsOn');
if get(NEWs,'Value')
    load data_GrNEWs;
    plotAgainNEWs(numGrNEWs);
end;

%перерисовка Парето сетевого
ParS=findobj(graphics, 'Tag', 'GrParetsOn');
if get(ParS,'Value')
    plotPeretsOn;
end;

%перерисовка Нэш точного
NEWt=findobj(graphics, 'Tag', 'GrNEWtOn');
if get(NEWt,'Value')
    plotNEWtOn;
end;

%перерисовка т.Шепли
Wepli=findobj(graphics, 'Tag', 'GrWepliOn');
if get(Wepli,'Value')
    plotWepliOn;
end;

%перерисовка СТЭК-1
St1=findobj(graphics, 'Tag', 'GrSTEK1On');
if get(St1,'Value')
    plotSTEK1On;
end;

%перерисовка СТЭК-5
St5=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St5,'Value')
    plotSTEK5On;
end;

%перерисовка СТЭК-7
St7=findobj(graphics, 'Tag', 'GrSTEK5On');
if get(St7,'Value')
    plotSTEK7On;
end;

end;
