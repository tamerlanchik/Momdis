function nmodis;
warning off;


s=which('momdis.m');
s=strrep(s,[filesep 'momdis.m'],'');

addpath(strcat(s,[filesep 'Config']));
addpath(strcat(s,[filesep 'Graph']));
addpath(strcat(s,[filesep 'Drivers']));
addpath(strcat(s,[filesep 'Algorithms']));
addpath(strcat(s,[filesep 'Models']));
addpath(strcat(s,[filesep 'Data']));
addpath(strcat(s,[filesep 'Analit']));
addpath(strcat(s,[filesep 'Modelir']));
addpath(s);

cd(s);
delete  *.rep; delete *.tmp
mmenu;


fail=fopen('startcong.txt','rt');
namemod=fgetl(fail);
set(findobj(mmenu, 'Tag', 'namemodelvmenu') , 'String', namemod);
fclose(fail);

modno='НЕТ';
if (length(namemod)==length(modno))& (namemod(1)==modno(1))& (namemod(2)==modno(2)) & (namemod(3)==modno(3))
    %нет модели, выключаю все пункты меню кроме описания и помощи
    set(findobj(mmenu, 'Tag', 'mmodelir') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'moptimiz') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'off');
else
    %есть модели, выключаю только меню вывода результатов    
    set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'off');
end

set(findobj(mmenu, 'Tag', 'shmetopt') , 'Enable', 'Off');

 
 