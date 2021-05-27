function vyvodObPo

'вывод расчета области показателей'

load data_num_coalic;

if num_coalic==2;
% 2 коалиции

load data_field;

[n,m,k]=size(DataM.J);
kQ=size(DataM.Q);

z=1;
for i=1:n
     for l=1:m
         
  NN(z,1)=DataM.J(i,l,1);
  NN(z,2)=DataM.J(i,l,2);
  
  for j=1:kQ(3)
        NN(z,j+2)=DataM.Q(i,l,j);
  end

  nS=1;
  p=num2str(z);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
  for j=1:kQ(3)
      
        p=num2str(NN(z,j+2));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
    if j~=kQ(3)
        e(z,nS:nS)=','; 
        nS=nS+1;
    end

  end

  e(z,nS:(nS+10))=')  ->  J: (';
  
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=')'; 
  nS=nS+1;
  
  z=z+1;
  end
end


fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);
end;

if num_coalic==3;
% 3 коалиции

load data_field;
[n,m,n1,k]=size(DataM.J);
kQ=size(DataM.Q);
z=1;
for i=1:n
     for l=1:m
             for ii=1:n1
  NN(z,1)=DataM.J(i,l,ii,1);
  NN(z,2)=DataM.J(i,l,ii,2);
  NN(z,3)=DataM.J(i,l,ii,3);
  
    for j=1:kQ(4)
        NN(z,j+3)=DataM.Q(i,l,i1,j);
    end
  
  nS=1;
  p=num2str(z);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;

    for j=1:kQ(4)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
        if j~=kQ(4)
            e(z,nS:nS)=','; 
            nS=nS+1;
        end

    end
    
  e(z,nS:(nS+10))=')  ->  J: ('; 
  nS=nS+11;

  p=num2str(NN(z,1));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,2));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;

  e(z,nS:nS)=','; 
  nS=nS+1;

  p=num2str(NN(z,3));
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
  
  e(z,nS:nS)=')'; 
  nS=nS+1;
  
  z=z+1;
     end
  end
end

fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);
end;