function metodSTEK7

'���������� ������ ����-7'

load data_num_coalic;

if num_coalic==2;
load data_tipmetst7
STEK_7_2J(numst7+1);
end;

if num_coalic==3;
load data_tipmetst7
STEK_7_3J(numst7+1);
end;

load data_num_coalic;

if num_coalic==2;
    load data_tipmetst7;
    %Pareto_2J(numst7);
    set(findobj(VyborMetOpt, 'Tag', 'metSTEK7F'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metSTEK7F'),'Enable', 'On');
end;

if num_coalic==3;
    load data_tipmetst7;
    %Pareto_3J(numst7);
    set(findobj(VyborMetOpt, 'Tag', 'metSTEK7F'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metSTEK7F'),'Enable', 'On');
end;
