
function numflagnd;
%global flag_nd
val=get(findobj(inpmodel, 'Tag', 'flagndnum'),'value');

switch val      % �������� ����������� ������
case 1          % ��������� ������ ������
%flag_nd=0;  
set(findobj(inpmodel, 'Tag', 'textint') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 't0int') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'Tint') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'textinteg') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'metinteg') , 'Visible', 'On');

set(findobj(inpmodel, 'Tag', 'textTakt') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'nTakt') , 'Visible', 'Off');

case 2          % ��������� ������ ������
set(findobj(inpmodel, 'Tag', 'textint') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 't0int') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'Tint') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'textinteg') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'metinteg') , 'Visible', 'Off');

set(findobj(inpmodel, 'Tag', 'textTakt') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'nTakt') , 'Visible', 'On');

%flag_nd=1;
otherwise
 
end
%save data_flag_nd flag_nd;


