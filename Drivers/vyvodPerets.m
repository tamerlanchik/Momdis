function vyvodPerets

'вывод метода Парето сетевого'


load data_num_coalic;

if num_coalic==2;
load data_par_s;
[n,k]=size(Data0.J);
kQ=size(Data0.Q);
z=1;
for i=1:n
  NN(z,1)=Data0.J(i,1);
  NN(z,2)=Data0.J(i,2);
  
  for j=1:kQ(2)
        NN(z,j+2)=Data0.Q(i,j);
  end

  nS=1;
  p=num2str(z);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
  for j=1:kQ(2)
      
        p=num2str(NN(z,j+2));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
    if j~=kQ(2)
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

fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);
end;

if num_coalic==3;
load data_par_s;
[n,k]=size(Data0.J);
kQ=size(Data0.Q);
z=1;
for i=1:n
  NN(z,1)=Data0.J(i,1);
  NN(z,2)=Data0.J(i,2);
  NN(z,3)=Data0.J(i,3);
  
  for j=1:kQ(2)
        NN(z,j+3)=Data0.Q(i,j);
  end

  nS=1;
  p=num2str(z);
  [r,d]=size(p);
  e(z,nS:(nS+d-1))=p; 
  nS=nS+d;
    
  e(z,nS:nS+6)=')  Q: (';
  nS=nS+7;
  
  for j=1:kQ(2)
      
        p=num2str(NN(z,j+3));
        [r,d]=size(p);
        e(z,nS:(nS+d-1))=p; 
        nS=nS+d;
        
    if j~=kQ(2)
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

fff=findobj(vyvodRezult, 'Tag', 'PoleVyvoda');
set(fff , 'String', e);
end;