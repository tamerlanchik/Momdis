function metodUKUs

'выполнение метода УКУ сетевого'

load data_num_coalic;

if num_coalic==2;
Uku_Set_2J;
end;

if num_coalic==3;
% Классическое бескоалиционное УКУ-равновесие (на основе индивидуальных контругроз)
Uku_Set_n_3J
end;