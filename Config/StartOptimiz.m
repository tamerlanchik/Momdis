function StartOptimiz

%flagm=get(findobj(VyborMetOpt, 'Tag', 'metObPo'),'Value');
%if flagm==1
%    %метод выбран
%  metodObPo; 
%  set(findobj(VyborMetOpt, 'Tag', 'metObPoF'),'Value', 1);
%else
%    %метод не выбран
%end
%тут же визуализация графики

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSlRaRe'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSlRaReF'),'Value');
      if num==0
      metodSlRaRe;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSlRaReF'),'Value', 1);
  
else
    %метод не выбран
end


%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSiRaRe'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSiRaReF'),'Value');
      if num==0
      VyborSiRaRe;
      else
      end
  else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metUKUs'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metUKUsF'),'Value');
      if num==0
      metodUKUs;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metUKUsF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metNEWs'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metNEWsF'),'Value');
      if num==0
      metodNEWs;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metNEWsF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metPerets'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metPeretsF'),'Value');
      if num==0
      VyborParetos;
      else
      end
else
    %метод не выбран
end


%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metUKUt'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metUKUtF'),'Value');
      if num==0
      metodUKUt;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metUKUtF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metNEWt'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metNEWtF'),'Value');
      if num==0
      metodNEWt;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metNEWtF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metParett'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metParettF'),'Value');
      if num==0
      metodParett;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metParettF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metWepli'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metWepliF'),'Value');
      if num==0
      VyborWepli;
      else
      end
  else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metOmega'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metOmegaF'),'Value');
      if num==0
      metodOmega;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metOmegaF'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK1'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK1F'),'Value');
      if num==0
      metodSTEK1;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK1F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK2'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK2F'),'Value');
      if num==0
      metodSTEK2;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK2F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK3'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK3F'),'Value');
      if num==0
      metodSTEK3;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK3F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK4'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK4F'),'Value');
      if num==0
      metodSTEK4;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK4F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK5'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK5F'),'Value');
      if num==0
      metodSTEK5;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK5F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK6'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK6F'),'Value');
      if num==0
      metodSTEK6;
      else
      end
  set(findobj(VyborMetOpt, 'Tag', 'metSTEK6F'),'Value', 1);
else
    %метод не выбран
end

%_________________
flagm=get(findobj(VyborMetOpt, 'Tag', 'metSTEK7'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metSTEK7F'),'Value');
      if num==0
      VyborStek1;
      else
      end
else
    %метод не выбран
end


%_________________

flagm=get(findobj(VyborMetOpt, 'Tag', 'metUKUks'),'Value');
if flagm==1
    %метод выбран
      num=get(findobj(VyborMetOpt, 'Tag', 'metUKUksF'),'Value');
      if num==0
        VyborUKUks
      else
      end
  else
    %метод не выбран
end


set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'On');
