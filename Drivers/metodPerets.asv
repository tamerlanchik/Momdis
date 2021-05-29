function metodPerets

'выполнение метода Парето сетевого'

load data_num_coalic;

if num_coalic==2;
    load data_tipmetnp;
    Pareto_2J(numparetset);
    set(findobj(VyborMetOpt, 'Tag', 'metPeretsF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metPeretsF'),'Enable', 'On');
end;

if num_coalic==3;
    load data_tipmetnp;
    Pareto_3J(numparetset);
    set(findobj(VyborMetOpt, 'Tag', 'metPeretsF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metPeretsF'),'Enable', 'On');
end;