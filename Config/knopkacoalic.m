
function knopkacoalic;
% не используется

val=get(findobj(inpmodel, 'Tag', 'knopkakoal'),'value');

if val==0 % кнопка отжата

set(findobj(inpmodel, 'Tag', 'knopkakoal'),'string','вкл');
    
set(findobj(inpmodel, 'Tag', 'modx'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modx'),'BackGroundColor',[0.91,0.91,0.91]);

set(findobj(inpmodel, 'Tag', 'modQ'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modQ'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modupr'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modupr'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modupr'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modupr'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modj'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modj'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modconst'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modconst'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modx0'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modx0'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modQ1'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modQ1'),'BackGroundColor',[0.86,0.86,0.86]);

set(findobj(inpmodel, 'Tag', 'modAupr'),'enable','off');
set(findobj(inpmodel, 'Tag', 'modAupr'),'BackGroundColor',[0.86,0.86,0.86]);

else    %кнопка утоплена

val=get(findobj(inpmodel, 'Tag', 'tagcoalic'),'value')

switch val      % выбираем высвеченную строку
case 1          % высвечена первая строка, неактивная позиция, т.к. на 2-х коалициях кнопка не активна
    
case 2          % высвечена вторая строка

num_coalic=3;
otherwise
 
end
save data_num_coalic num_coalic;

set(findobj(inpmodel, 'Tag', 'knopkakoal'),'string','выкл');
    
set(findobj(inpmodel, 'Tag', 'modx'),'BackGroundColor',[1,1,1]);
set(findobj(inpmodel, 'Tag', 'modx'),'enable','on');

set(findobj(inpmodel, 'Tag', 'modQ'),'BackGroundColor',[1,1,1]);
set(findobj(inpmodel, 'Tag', 'modQ'),'enable','on');
    
set(findobj(inpmodel, 'Tag', 'modupr'),'BackGroundColor',[1,1,1]);
set(findobj(inpmodel, 'Tag', 'modupr'),'enable','on');
    
set(findobj(inpmodel, 'Tag', 'modj'),'BackGroundColor',[1,1,1]);
set(findobj(inpmodel, 'Tag', 'modj'),'enable','on');
    
set(findobj(inpmodel, 'Tag', 'modconst'),'BackGroundColor',[1,1,1]);
set(findobj(inpmodel, 'Tag', 'modx0'),'BackGroundColor',[1,1,1]);

set(findobj(inpmodel, 'Tag', 'modQ1'),'enable','on');
set(findobj(inpmodel, 'Tag', 'modQ1'),'BackGroundColor',[1,1,1]);

set(findobj(inpmodel, 'Tag', 'modAupr'),'enable','on');
set(findobj(inpmodel, 'Tag', 'modAupr'),'BackGroundColor',[1,1,1]);

set(findobj(inpmodel, 'Tag', 'modconst'),'enable','on');


end


