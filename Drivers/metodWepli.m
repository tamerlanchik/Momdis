function metodWepli

'выполнение метода Шепли'

load data_num_coalic;

if num_coalic==2;
    load data_tipmetWepli;
    Shepli_2J(numWepli);
    set(findobj(VyborMetOpt, 'Tag', 'metWepliF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metWepliF'),'Enable', 'On');
end;

if num_coalic==3;
    load data_tipmetWepli;
    numWepli
    Shepli_3J(numWepli);
    set(findobj(VyborMetOpt, 'Tag', 'metWepliF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metWepliF'),'Enable', 'On');
end;