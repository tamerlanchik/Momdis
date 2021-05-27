
function razlJ;


load data_num_coalic;

if num_coalic==2;
set(findobj(graphics, 'Tag', 'GrUKUks') , 'Visible', 'Off');
set(findobj(graphics, 'Tag', 'GrUKUksOff') , 'Visible', 'Off');
set(findobj(graphics, 'Tag', 'GrUKUksOn') , 'Visible', 'Off');
set(findobj(graphics, 'Tag', 'GrUKUsFr') , 'Visible', 'Off');
end;

if num_coalic==3;
set(findobj(graphics, 'Tag', 'GrUKUs') , 'String', 'УКУ безкоалиц. (сет.)');
end;








