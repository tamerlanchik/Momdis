function STEK_1_2J;
% Функция выбора эффективного Нэш-решения из множества Нэш-решений
% (если точка сетевого Нэша одна, она и будет точкой СТЭК-1)
load data_nash_s; Data=Data0;
if size(Data0.J,1)==0;
  Data0=[];
else
  sum_J=Data0.J(:,1)+Data0.J(:,2);
  [mm,nn]=min(sum_J);
  Data0.Q=Data.Q(nn,:);
  Data0.J=Data.J(nn,:);
  Data0.Time=Data.Time;
end;
save data_stek1 Data0;
