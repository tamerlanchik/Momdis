function metodSiRaRe

'���������� ������ ������� ����������� �������'


load data_num_coalic;

if num_coalic==2;
    load data_tipmetnsi;
    Nash_Set_C_2J(numsirare);
    set(findobj(VyborMetOpt, 'Tag', 'metSiRaReF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metSiRaReF'),'Enable', 'On');
end;

if num_coalic==3;
% ���������� ������������� ��� (������ ������������ ���-����������)
    load data_tipmetnsi;
    Nash_Set_C_3J(numsirare);
    set(findobj(VyborMetOpt, 'Tag', 'metSiRaReF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metSiRaReF'),'Enable', 'On');
end;