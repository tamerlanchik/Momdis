function metodObPo

'���������� ������� ������� �����������'

load data_num_coalic;

if num_coalic==2;
% 2 ��������
Area_2J;
% �� �������!
set(findobj(mmenu, 'Tag', 'shmetopt') , 'Enable', 'On');
set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'On');
set(findobj(RassOblPok, 'Tag', 'na4robpok') , 'Enable', 'Off');
end;

if num_coalic==3;
% �� �������!
Area_3J;
set(findobj(mmenu, 'Tag', 'shmetopt') , 'Enable', 'On');
set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'On');
set(findobj(RassOblPok, 'Tag', 'na4robpok') , 'Enable', 'Off');
end;
