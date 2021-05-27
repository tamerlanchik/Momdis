function nmodis;
warning off;


s=which('momdis.m');
s=strrep(s,'\momdis.m','');

%addpath(strcat(s,'\Q2'));
%addpath(strcat(s,'\Q4'));
%addpath(strcat(s,'\Q8'));
%addpath(strcat(s,'\Q8'));
%addpath(strcat(s,'\CTEK'));
%addpath(strcat(s,'\Check'));
%addpath(strcat(s,'\Reports'));
addpath(strcat(s,'\Config'));
%addpath(strcat(s,'\Nash'));
%addpath(strcat(s,'\Shepli'));
%addpath(strcat(s,'\Matrix'));
addpath(strcat(s,'\Graph'));
addpath(strcat(s,'\Drivers'));
addpath(strcat(s,'\Algorithms'));
addpath(strcat(s,'\Models'));
addpath(strcat(s,'\Data'));
addpath(strcat(s,'\Analit'));
addpath(strcat(s,'\Modelir'));
addpath(s);

cd(s);
delete *.rep; delete *.tmp
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

 
 