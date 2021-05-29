function readeMODinMODELS

name=get(findobj(inpmodel, 'Tag', 'namemod'),'String');
mX=get(findobj(inpmodel, 'Tag', 'modx'),'String');
mJ=get(findobj(inpmodel, 'Tag', 'modj'),'String');
mC=get(findobj(inpmodel, 'Tag', 'modconst'),'String');
mQ=get(findobj(inpmodel, 'Tag', 'modQ'),'String');
mQ1=get(findobj(inpmodel, 'Tag', 'modQ1'),'String');
mU=get(findobj(inpmodel, 'Tag', 'modupr'),'String');
mx0=get(findobj(inpmodel, 'Tag', 'modx0'),'String');
mrq=get(findobj(inpmodel, 'Tag', 'modr_q'),'String');
mrs=get(findobj(inpmodel, 'Tag', 'modr_set'),'String');


s=which('momdis.m');
s=strrep(s,'momdis.m','');
s=strcat(s,'Models');

s10=strcat(s,'/',name,'.m');
%s1=strcat(s,'/',name,'mfu.m');
%s2=strcat(s,'/',name,'min.m');
%s3=strcat(s,'/',name,'mmo.m');
%s4=strcat(s,'/',name,'mog.m');
%s5=strcat(s,'/',name,'mop.m');
%s6=strcat(s,'/',name,'mpr.m');

%-----------------------------------------------------------------------
% создание mat_fun
fail=fopen(s10,'w');
fprintf(fail, '%s/n', 'function y=mat_fun(X,Q,N);');
fprintf(fail, '%s/n' ,'T_=X(:,1); X_I=X(:,2:size(X,2)); X_T=X_I(size(X_I,1),:);');
fprintf(fail,'%s/n','J_norm=[1000,1000];');

[nn mm]=size(mC);
 for i=1:nn 
              if mC(i,1)~=char(32)
                   fprintf(fail,'%s/n', mC(i,:));
              end
 end;

 fprintf(fail,'%s/n', '%J'); 
 [nn mm]=size(mJ);
 for i=1:nn 
              if mJ(i,1)~=char(32)
                   fprintf(fail,'%s/n', mJ(i,:));
              end
 end;

fprintf(fail,'%s/n', '%KJ'); 

fprintf(fail,'%s/n', 'if N==0; y=J; else y=J(N); end;');

fclose(fail);

%--------------------------------------------------------------------------------
% создание mat_int
%fail=fopen(s10,'a');
%fprintf(fail, '%s/n','function X_=mat_int(Q,X0);');
%fprintf(fail,'%s/n','global flag_nd;');
%fprintf(fail,'%s/n','if flag_nd==0;');
% хитрый ход, т.к. нальзя писать символ '. '=char(39)
%sss1=strcat('global t0 T; eps=zeros(1,size(X0,2))+1e-4; X0=X0',char(39),';');
%fprintf(fail,'%s/n', sss1);
%sss2=strcat('options=odeset(',char(39),'RelTol',char(39),',1e-4,',char(39),'AbsTol',char(39),',eps,',char(39),'maxstep',char(39),',(T-t0)/100);');
%fprintf(fail,'%s/n', sss2);

%fprintf(fail,'%s/n','[tt,xx]=ode23s(@mat_mod,[t0 T],X0,options,Q);');
%fprintf(fail,'%s/n','X_=[tt,xx];');
%fprintf(fail,'%s/n','end;');
%fprintf(fail,'%s/n','if flag_nd==1;');
%fprintf(fail,'%s/n','X_=[0,X0];');
%fprintf(fail,'%s/n','global Nt;');
%fprintf(fail,'%s/n','X1=X0;');
%fprintf(fail,'%s/n','for i=1:Nt;');
%fprintf(fail,'%s/n','xx=mat_mod(0,X1,Q);');
%fprintf(fail,'%s/n','X1=xx;');
%fprintf(fail,'%s/n','X_=[X_;Nt,xx];');
%fprintf(fail,'%s/n','end;');
%fprintf(fail,'%s/n','end;');
%fclose(fail);

%-----------------------------------------------------------------------
% создание mat_mod
fail=fopen(s10,'a');
fprintf(fail,'%s/n','function X_=mat_mod(dt,X,Q);');
fprintf(fail,'%s/n','global flag_nd;');
fprintf(fail,'%s/n','load data_flag_nd;');

fprintf(fail,'%s/n', '%C'); 

[nn mm]=size(mC);
 for i=1:nn 
              if mC(i,1)~=char(32)
                   fprintf(fail,'%s/n', mC(i,:));
              end
 end;
fprintf(fail,'%s/n', '%KC'); 
 
 fprintf(fail,'%s/n', '%X'); 
 [nn mm]=size(mX);
 for i=1:nn 
              if mX(i,1)~=char(32)
                   fprintf(fail,'%s/n', mX(i,:));
              end
 end;
fprintf(fail,'%s/n', '%KX'); 

sss3=strcat('if flag_nd==0; X_=X_',char(39),'; end;');
fprintf(fail,'%s/n', sss3);
fclose(fail);

%--------------------------------------------------------------------------
% создание mat_ogr
%fprintf(fail,'%s/n','u_=[];');
%fprintf(fail,'v_=[];');
% Ограничения типа неравенств: u_(t)<=0;
% Например:
% u_(1)=Q(1)+Q(2)-1;
% u_(2)=Q(3)+Q(4)-1;
% Ограничения типа равенств: v_(t)=0;
fail=fopen(s10,'a');
fprintf(fail,'%s/n','function [u_,v_]=mat_ogr(Q,X,n);');

fprintf(fail,'%s/n', '%U'); 
[nn mm]=size(mU);
 for i=1:nn 
              if mU(i,1)~=char(32)
                   fprintf(fail,'%s/n', mU(i,:));
              end
 end;
 fprintf(fail,'%s/n', '%KU');
 
 %fprintf(fail,'%s/n', '%U1'); 
 %[nn mm]=size(mU1);
 %for i=1:nn 
 %             if mU1(i,1)~=char(32)
 %                  fprintf(fail,'%s/n', mU1(i,:));
 %             end
 % end;
 %fprintf(fail,'%s/n', '%KU1'); 

fclose(fail);


%-----------------------------------------------------------------------------
%fail=fopen(s10,'a');
%fprintf(fail,'function y=mat_opt(Q_,X0,n);');
%fclose(fail);

%------------------------------------------------------------------------------------
%fail=fopen(s10,'a');
%fprintf(fail,'function mat_prover;');
%fclose(fail);

%------------
fail=fopen(s10,'a');

fprintf(fail,'%s/n','function KonFail'); 
fprintf(fail,'%s/n', '%Q'); 
 [nn mm]=size(mQ);
 for i=1:nn 
               if mQ(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mQ(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%KQ'); 

fclose(fail);
%_______________
% начальные значения
fail=fopen(s10,'a');

fprintf(fail,'%s/n', '%x0'); 
 [nn mm]=size(mx0);
 for i=1:nn 
               if mQ1(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mx0(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%Kx0'); 

fclose(fail);
%______________
fail=fopen(s10,'a');

fprintf(fail,'%s/n', '%Q1'); 
 [nn mm]=size(mQ1);
 for i=1:nn 
               if mQ1(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mQ1(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%KQ1'); 

fclose(fail);



%________________________________________________________________________
% тип модели и колличество коалиций
fail=fopen(s10,'a');

val1=get(findobj(inpmodel, 'Tag', 'tagcoalic'),'value');
val2=get(findobj(inpmodel, 'Tag', 'flagndnum'),'value');
fprintf(fail,'%s/n', '%NC'); 

switch val1      
case 1         
fprintf(fail,'%s/n', 'num_coalic=2;'); 
%fprintf(fail,'%s/n', 'save data_num_coalic num_coalic;'); 

case 2         
fprintf(fail,'%s/n', 'num_coalic=3;'); 
%fprintf(fail,'%s/n', 'save data_num_coalic num_coalic;'); 
  
otherwise
  
end
fprintf(fail,'%s/n', '%KNC'); 
fprintf(fail,'%s/n', '%FN'); 

switch val2      % выбираем высвеченную строку
case 1          % высвечена первая строка
fprintf(fail,'%s/n', 'flag_nd=0;'); 
%fprintf(fail,'%s/n', 'save data_flag_nd flag_nd;');
%mr_q=get(findobj(inpmodel, 'Tag', 'modr_q'),'String');
fprintf(fail,'%s/n', '%KFN'); 
fprintf(fail,'%s/n', '%t0'); 
mt0=get(findobj(inpmodel, 'Tag', 't0int'),'String');
mT=get(findobj(inpmodel, 'Tag', 'Tint'),'String');
%fail=fopen(s10,'a');
 [nn mm]=size(mt0);
 for i=1:nn 
               if mt0(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mt0(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%Kt0'); 
fprintf(fail,'%s/n', '%T'); 

 [nn mm]=size(mT);
 for i=1:nn 
               if mT(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mT(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%KT'); 


%fclose(fail);
%______________


case 2          % высвечена вторая строка
fprintf(fail,'%s/n', 'flag_nd=1;'); 
fprintf(fail,'%s/n', '%KFN'); 
%fprintf(fail,'%s/n', 'save data_flag_nd flag_nd;'); 
fprintf(fail,'%s/n', '%NT'); 
mNT=get(findobj(inpmodel, 'Tag', 'nTakt'),'String');
%fail=fopen(s10,'a');
 [nn mm]=size(mNT);
 for i=1:nn 
               if mNT(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mNT(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%KNT'); 

otherwise
end
 
fclose(fail);    
%______________________________________________________________________

% Размерности вектора параметров по каждой коалиции
fail=fopen(s10,'a');

fprintf(fail,'%s/n', '%rq'); 
 [nn mm]=size(mrq);
 for i=1:nn 
               if mQ1(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mrq(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%Krq'); 

fclose(fail);
%______________
% Число сетевых точек
fail=fopen(s10,'a');

fprintf(fail,'%s/n', '%rs'); 
 [nn mm]=size(mrs);
 for i=1:nn 
               if mQ1(i,1)~=char(32)
                   fprintf(fail,'%s/n', strcat('',mrs(i,:)));
              end
 end;
fprintf(fail,'%s/n', '%Krs'); 

fclose(fail);
%______________




set(findobj(inpmodel, 'Tag', 'PrimenModel') , 'Enable', 'on');

