function plotObPoOff

'выкл области показателей'

load data_num_coalic;

if num_coalic==2;
% 2 коалиции
load data_field;
plot(DataM.J(:,:,1),DataM.J(:,:,2),'w.'); hold on;

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

%перерисовка УКУ сетевого
UKUs=findobj(graphics, 'Tag', 'GrUKUsOn');
if get(UKUs,'Value')
    load data_GrUKUs;
    plotAgainUKUs(numGrUKUs);
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
% 3 коалиции
load data_field;
plot3(DataM.J(:,:,1,1),DataM.J(:,:,1,2),DataM.J(:,:,1,3),'w.'); hold on;

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

%перерисовка УКУ сетевого
UKUs=findobj(graphics, 'Tag', 'GrUKUsOn');
if get(UKUs,'Value')
    load data_GrUKUs;
    plotAgainUKUs(numGrUKUs);
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