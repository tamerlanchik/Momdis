function Shepli_2J(n);
% Реализация процедуры поиска точки Шепли (только Шепли, без расчета оптимального решения).
% Собственно решение УКУ-Шепли находится при помощи процедуры STEK_7 (точка СТЭК-7)
load data_par_s Data0; Data_p=Data0;
ParetoJ=Data_p.J;
if n==1; load data_nash_t Data0; end; % Для точного Нэша
if n==2; load data_stek1 Data0; end; % Для сетевого Нэша
NashJ=Data0.J;
tic;
Buff=ParetoJ(:,1)+ParetoJ(:,2); [V12,nn]=min(Buff);
ShepliJ(1)=0.5*(V12+NashJ(1)-NashJ(2));
ShepliJ(2)=0.5*(V12+NashJ(2)-NashJ(1));
Data0.Time=toc; Data0.J=ShepliJ;
save data_shepli Data0;
