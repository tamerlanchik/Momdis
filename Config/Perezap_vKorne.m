function Perezap_vKorne;

name=get(findobj(inpmodel, 'Tag', 'namemod'),'String');

delete data_field.mat
delete data_uku_A.mat
delete data_nash_s.mat
delete data_nash_e.mat
delete data_uku.mat
delete data_nash_a.mat
delete data_par_s.mat
delete data_stek1.mat
delete data_stek1.mat
delete data_stek5.mat
delete data_tipmetnsi.mat
delete data_tipmetnp.mat
delete data_flag_nd.mat
delete data_Nt.mat
delete data_num_coalic.mat
delete data_qmm.mat
delete data_r_q.mat
delete data_r_set.mat
delete data_Tint.mat
delete data_x0.mat
delete data_nash_t.mat
delete data_shepli.mat
delete data_stek7.mat
delete data_tipmetUKUks.mat
delete data_tipmetWepli.mat
delete data_uku_n.mat
delete data_uku_k.mat



% открываю начальные значения x0

mX0=get(findobj(inpmodel, 'Tag', 'modx0'),'String');
eval(mX0)
save data_x0 x0;

% открываю r_q

mRQ=get(findobj(inpmodel, 'Tag', 'modr_q'),'String');
eval(mRQ)
save data_r_q r_q;

% открываю t0 и T

mt0=get(findobj(inpmodel, 'Tag', 't0int'),'String');
mT=get(findobj(inpmodel, 'Tag', 'Tint'),'String');
eval(mt0)
eval(mT)
save data_Tint t0 T;

% открываю Nt`

NT=get(findobj(inpmodel, 'Tag', 'nTakt'),'String');
eval(NT)
save data_Nt Nt;

% открываю r_set

mRS=get(findobj(inpmodel, 'Tag', 'modr_set'),'String');
eval(mRS)
save data_r_set r_set;

% открываю число коалиций
val=get(findobj(inpmodel, 'Tag', 'tagcoalic'),'value');
switch val      % выбираем высвеченную строку
case 1          % высвечена первая строка
num_coalic=2;
save data_num_coalic num_coalic;
case 2          % высвечена вторая строка
num_coalic=3;
save data_num_coalic num_coalic;
otherwise
end

% открываю тип модели
val=get(findobj(inpmodel, 'Tag', 'flagndnum'),'value');
switch val      % выбираем высвеченную строку
case 1          % высвечена первая строка
flag_nd=0;  
save data_flag_nd flag_nd;
case 2          % высвечена вторая строка
flag_nd=1;  
save data_flag_nd flag_nd;
otherwise
end


mRS=get(findobj(inpmodel, 'Tag', 'modr_set'),'String');
eval(mRS)
save data_r_set r_set;


% открываю мин и макс параметров q

mQ=get(findobj(inpmodel, 'Tag', 'modQ'),'String');
eval(mQ);
mQ1=get(findobj(inpmodel, 'Tag', 'modQ1'),'String');
eval(mQ1);
save data_qmm q_max q_min;

% Делаю активными позиции меню
set(findobj(mmenu, 'Tag', 'namemodelvmenu'),'String',name);
set(findobj(mmenu, 'Tag', 'mmodelir') , 'Enable', 'on');
set(findobj(mmenu, 'Tag', 'moptimiz') , 'Enable', 'on');

% записываю в файл состояния имя примененной модели
fail=fopen('startcong.txt','w');
fprintf(fail, '%s\n', name);
fclose(fail);

% Поиск пути к момдису
k=which('momdis.m');
k=strrep(k,'momdis.m','');
s=strcat(k,'Models');

%создание стороки с именем модели
s10=strcat(s,'\',name,'.m');

%создание сторок с именем файлов модели в корне
k1=strcat(k,'mat_fun.m');
%k2=strcat(k,'mat_int.m');
k3=strcat(k,'mat_mod.m');
k4=strcat(k,'mat_ogr.m');
%k5=strcat(k,'mat_opt.m');
%k6=strcat(k,'mat_prover.m');


fail=fopen(s10,'r');

% создание mat_fun в корне
failZ=fopen(k1,'w');
A=fgets(fail);
fprintf(failZ, A);
while 1
A=fgets(fail);
if (A(1)=='f')&(A(2)=='u')&(A(3)=='n')&(A(4)=='c')&(A(5)=='t')&(A(6)=='i')&(A(7)=='o')&(A(8)=='n')&(A(9)==' ')&(A(10)=='X')&(A(11)=='_')&(A(12)=='=')&(A(13)=='m')&(A(14)=='a')&(A(15)=='t')&(A(16)=='_')&(A(17)=='m')&(A(18)=='o')&(A(19)=='d')&(A(20)=='(')&(A(21)=='d')&(A(22)=='t')&(A(23)==',')&(A(24)=='X')&(A(25)==',')&(A(26)=='Q')&(A(27)==')')
    break
end
fprintf(failZ, A);
end
fclose(failZ);


% создание mat_mod в корне
failZ=fopen(k3,'w');
fprintf(failZ, A);
while 1
A=fgets(fail);
if (A(1)=='f')&(A(2)=='u')&(A(3)=='n')&(A(4)=='c')&(A(5)=='t')&(A(6)=='i')&(A(7)=='o')&(A(8)=='n')
    break
end
fprintf(failZ, A);
end
fclose(failZ);

% создание mat_ogr в корне
failZ=fopen(k4,'w');
fprintf(failZ, A);
while 1
A=fgets(fail);
if (A(1)=='f')&(A(2)=='u')&(A(3)=='n')&(A(4)=='c')&(A(5)=='t')&(A(6)=='i')&(A(7)=='o')&(A(8)=='n')
    break
end
fprintf(failZ, A);
end
fclose(failZ);


fclose(fail);





%запись в файл состояния размерностей

%показатели
fail=fopen(s10,'r');
raz=0;
while 1
A=fgets(fail);
if (A(1)=='%')&(A(2)=='J')
    break
end
end
while 1
A=fgets(fail);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='J')
    break
end
raz=raz+1;

end
fclose(fail);
razs=num2str(raz);
failR=fopen('startcong.txt','a');
fprintf(failR, '%s\n', razs);
fclose(failR);

%состояние
fail2=fopen(s10,'r');
raz=0;
while 1
A=fgets(fail2);
if (A(1)=='%')&(A(2)=='X')
    break
end
end
while 1
A=fgets(fail2);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='X')
    break
end
raz=raz+1;
%if A(1)==' '
%    raz=raz-1;
%end

end
fclose(fail2);
razs=num2str(raz);
failR=fopen('startcong.txt','a');
fprintf(failR, '%s\n', razs);
fclose(failR);

%показатели
fail3=fopen(s10,'r');
raz=0;
while 1
A=fgets(fail3);
if (A(1)=='%')&(A(2)=='Q')
    break
end
end
while 1
A=fgets(fail3);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='Q')
    break
end
raz=raz+1;

end
fclose(fail3);
razs=num2str(raz);
failR=fopen('startcong.txt','a');
fprintf(failR, '%s\n', razs);
fclose(failR);

close(inpmodel);
