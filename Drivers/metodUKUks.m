function metodUKUks

'���������� ������ ��� ��������'

load data_num_coalic;

if num_coalic==2;
% ������ ��� 3J
end;

if num_coalic==3;
% ������������ ��������������� ���-���������� (�� ������ �������������� ����������)
Uku_Set_k_3J

save data_tipmetUKUks numUKUks

    load data_tipmetUKUks;
    Uku_Set_k_3J(numUKUks);
    set(findobj(VyborMetOpt, 'Tag', 'metUKUksF'),'Value', 1);
    set(findobj(VyborMetOpt, 'Tag', 'metUKUksF'),'Enable', 'On');

end;