
function StartModelOpis;


fail=fopen('startcong.txt','rt');
name=fgetl(fail);
fclose(fail);

set(findobj(inpmodel, 'Tag', 'namemod') , 'String', name);

modno='НЕТ';
if (length(name)==length(modno))&(name(1)==modno(1))&(name(2)==modno(2))&(name(3)==modno(3))
    return
else


k=which('momdis.m');
put=strrep(k,'momdis.m','Models/*.m');
%[name,FPath]=uigetfile(put);
%name=name(1:(length(name)-2));
%set(findobj(inpmodel, 'Tag', 'namemod') , 'String', name);

%name=get(findobj(inpmodel, 'Tag', 'namemod'),'String');

% Поиск пути к момдису
%k=which('momdis.m');
k=strrep(k,'momdis.m','');
s=strcat(k,'Models');

%создание стороки с именем модели
s10=strcat(s,'/',name,'.m');
k1=strcat(k,'diller');

% заполнение поля показателей
fail=fopen(s10,'r');
failZ=fopen(k1,'w');
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
fprintf(failZ, A);
end
fclose(failZ);
failZ=fopen(k1,'r');
A=fscanf(failZ, '%c', inf);
set(findobj(inpmodel, 'Tag', 'modj') , 'String', A);
fclose(fail);
fclose(failZ);

% заполнение поля состояния
fail2=fopen(s10,'r');
failZ2=fopen(k1,'w');
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
fprintf(failZ2, A);
end
fclose(failZ2);
failZ2=fopen(k1,'r');
A=fscanf(failZ2, '%c', inf);
set(findobj(inpmodel, 'Tag', 'modx') , 'String', A);
fclose(fail2);
fclose(failZ2);

% заполнение поля параметров
fail8=fopen(s10,'r');
failZ8=fopen(k1,'w');
while 1
A=fgets(fail8);
if (A(1)=='%')&(A(2)=='Q')
    break
end
end
while 1
A=fgets(fail8);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='Q')
    break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'modQ') , 'String', A(1,1:(mm-1)));
end
fclose(fail8);
fclose(failZ8);

%----
fail3=fopen(s10,'r');
failZ3=fopen(k1,'w');
while 1
A=fgets(fail3);
if (A(1)=='%')&(A(2)=='Q')&(A(3)=='1')
   break
end
end
while 1
A=fgets(fail3);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='Q')&(A(4)=='1')
    break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'modQ1') , 'String', A(1,1:(mm-1)));
end
fclose(fail3);
fclose(failZ3);

% заполнение поля начальные значения
fail7=fopen(s10,'r');
failZ7=fopen(k1,'w');
while 1
A=fgets(fail7);
if (A(1)=='%')&(A(2)=='x')&(A(3)=='0')
    break
end
end
while 1
A=fgets(fail7);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='x')&(A(4)=='0')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'modx0') , 'String', A(1,1:(mm-1)));
end
fclose(fail7);
fclose(failZ7);

% Размерности вектора параметров по каждой коалиции
fail9=fopen(s10,'r');
failZ9=fopen(k1,'w');
while 1
A=fgets(fail9);
if (A(1)=='%')&(A(2)=='r')&(A(3)=='q')
    break
end
end
while 1
A=fgets(fail9);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='r')&(A(4)=='q')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'modr_q') , 'String', A(1,1:(mm-1)));
end
fclose(fail9);
fclose(failZ9);

% Число сетевых точек
fail10=fopen(s10,'r');
failZ10=fopen(k1,'w');
while 1
A=fgets(fail10);
if (A(1)=='%')&(A(2)=='r')&(A(3)=='s')
    break
end
end
while 1
A=fgets(fail10);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='r')&(A(4)=='s')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'modr_set') , 'String', A(1,1:(mm-1)));
end
fclose(fail10);
fclose(failZ10);


% заполнение поля ограничений
fail4=fopen(s10,'r');
failZ4=fopen(k1,'w');
while 1
A=fgets(fail4);
if (A(1)=='%')&(A(2)=='U')
    break
end
end
while 1
A=fgets(fail4);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='U')
    break
end
fprintf(failZ4, A);
end
fclose(failZ4);
failZ4=fopen(k1,'r');
A=fscanf(failZ4, '%c', inf);
set(findobj(inpmodel, 'Tag', 'modupr') , 'String', A);
fclose(fail4);
fclose(failZ4);
%---
% заполнение поля констант
fail5=fopen(s10,'r');
failZ5=fopen(k1,'w');
while 1
A=fgets(fail5);
if (A(1)=='%')&(A(2)=='C')
    break
end
end
while 1
A=fgets(fail5);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='C')
    break
end
fprintf(failZ5, A);
end
fclose(failZ5);
failZ5=fopen(k1,'r');
A=fscanf(failZ5, '%c', inf);
set(findobj(inpmodel, 'Tag', 'modconst') , 'String', A);
fclose(fail5);
fclose(failZ5);

% применение типа модели и колличества коалиций
% 
fail6=fopen(s10,'r');
while 1
   
A=fgets(fail6);
if (A(1)=='%')&(A(2)=='F')&(A(3)=='N')
    break
end
end

while 1
A=fgets(fail6);

if (A(1)=='%')&(A(2)=='K')&(A(3)=='F')&(A(4)=='N')
    break
end
eval(A)
end
fclose(fail6);
switch flag_nd     
case 0         
set(findobj(inpmodel, 'Tag', 'flagndnum'),'value',1);
set(findobj(inpmodel, 'Tag', 'textint') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 't0int') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'Tint') , 'Visible', 'On');

set(findobj(inpmodel, 'Tag', 'textTakt') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'nTakt') , 'Visible', 'Off');

%numflagnd;
% интервал интегрирования
% t0
fail11=fopen(s10,'r');
failZ11=fopen(k1,'w');
while 1
A=fgets(fail11);
if (A(1)=='%')&(A(2)=='t')&(A(3)=='0')
    break
end
end
while 1
A=fgets(fail11);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='t')&(A(4)=='0')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 't0int') , 'String', A(1,1:(mm-1)));
end
fclose(fail11);
fclose(failZ11);

% T
fail12=fopen(s10,'r');
failZ12=fopen(k1,'w');
while 1
A=fgets(fail12);
if (A(1)=='%')&(A(2)=='T')
    break
end
end
while 1
A=fgets(fail12);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='T')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'Tint') , 'String', A(1,1:(mm-1)));
end
fclose(fail12);
fclose(failZ12);

case 1         
set(findobj(inpmodel, 'Tag', 'flagndnum'),'value',2);
set(findobj(inpmodel, 'Tag', 'textint') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 't0int') , 'Visible', 'Off');
set(findobj(inpmodel, 'Tag', 'Tint') , 'Visible', 'Off');

set(findobj(inpmodel, 'Tag', 'textTakt') , 'Visible', 'On');
set(findobj(inpmodel, 'Tag', 'nTakt') , 'Visible', 'On');
% NT
fail13=fopen(s10,'r');
failZ13=fopen(k1,'w');
while 1
A=fgets(fail13);
if (A(1)=='%')&(A(2)=='N')&(A(3)=='T')
    break
end
end
while 1
A=fgets(fail13);
if (A(1)=='%')&(A(2)=='K')&(A(3)=='N')&(A(4)=='T')
   break
end
[nn mm]=size(A);
set(findobj(inpmodel, 'Tag', 'nTakt') , 'String', A(1,1:(mm-1)));
end
fclose(fail13);
fclose(failZ13);


otherwise
end
%----------------

fail14=fopen(s10,'r');
while 1
A=fgets(fail14);
if (A(1)=='%')&(A(2)=='N')&(A(3)=='C')
    break
end
end

while 1
A=fgets(fail14);

if (A(1)=='%')&(A(2)=='K')&(A(3)=='N')&(A(4)=='C')
    break
end
eval(A)
end
fclose(fail14);

num_coalic
switch num_coalic      
case 2 
set(findobj(inpmodel, 'Tag', 'tagcoalic'),'value',1);

case 3         
set(findobj(inpmodel, 'Tag', 'tagcoalic'),'value',2);
    
otherwise
end
%-----------------

set(findobj(inpmodel, 'Tag', 'PrimenModel') , 'Enable', 'on');

end
