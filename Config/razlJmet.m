
function razlJmet;


load data_num_coalic;

if num_coalic==2;
set(findobj(VyborMetOpt, 'Tag', 'metUKUks') , 'Visible', 'Off');
set(findobj(VyborMetOpt, 'Tag', 'metUKUksF') , 'Visible', 'Off');
set(findobj(VyborMetOpt, 'Tag', 'metUKUks1') , 'Visible', 'Off');
set(findobj(VyborMetOpt, 'Tag', 'metUKUks2') , 'Visible', 'Off');
set(findobj(VyborMetOpt, 'Tag', 'metUKUks3') , 'Visible', 'Off');

end;

if num_coalic==3;
set(findobj(VyborMetOpt, 'Tag', 'textUKUs') , 'String', 'УКУ безкоалиц. (сет.)');
end;








